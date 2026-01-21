#!/bin/sh
set -eu

DEMO_FAIL_STEP="${DEMO_FAIL_STEP:-}"
DEMO_SLEEP_SEC="${DEMO_SLEEP_SEC:-2}"
DEMO_PARALLEL="${DEMO_PARALLEL:-0}"

RESULTS=""

log() {
  printf "[demo] %s\n" "$1"
}

append_result() {
  local step_name="$1"
  local status="$2"
  local entry
  entry=$(printf '{"step":"%s","status":"%s"}' "$step_name" "$status")
  if [ -n "$RESULTS" ]; then
    RESULTS="${RESULTS},${entry}"
  else
    RESULTS="${entry}"
  fi
}

write_summary() {
  local exit_code="${1:-0}"
  mkdir -p artifacts
  printf '{ "exit_code": %s, "steps": [%s] }\n' "$exit_code" "$RESULTS" \
    > artifacts/demo-summary.json
  log "summary=artifacts/demo-summary.json"
}

log_marker() {
  local marker="$1"
  local step_name="$2"
  printf "=== %s: %s ===\n" "$marker" "$step_name"
}

sleep_step() {
  local step_name="$1"
  log_marker "STEP START" "$step_name"
  log "step=$step_name status=running"
  sleep "$DEMO_SLEEP_SEC"
  if [ "$DEMO_FAIL_STEP" = "$step_name" ]; then
    log "step=$step_name status=failed"
    append_result "$step_name" "failed"
    log_marker "STEP END (FAILED)" "$step_name"
    return 1
  fi
  log "step=$step_name status=completed"
  append_result "$step_name" "completed"
  log_marker "STEP END (OK)" "$step_name"
}

parallel_group() {
  local group_name="$1"
  log_marker "PARALLEL START" "$group_name"
  (sleep_step "lint") &
  local pid_one=$!
  (sleep_step "unit-tests") &
  local pid_two=$!
  local status_one=0
  local status_two=0
  wait "$pid_one" || status_one=$?
  wait "$pid_two" || status_two=$?
  log_marker "PARALLEL END" "$group_name"
  if [ "$status_one" -ne 0 ] || [ "$status_two" -ne 0 ]; then
    return 1
  fi
}

trap 'write_summary "$?"' EXIT

log "demo start"
sleep_step "checkout"
sleep_step "build"
if [ "$DEMO_PARALLEL" = "1" ]; then
  parallel_group "quality-gates"
else
  sleep_step "test"
fi
sleep_step "package"
log "demo complete"
