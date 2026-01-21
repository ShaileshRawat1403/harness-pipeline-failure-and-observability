#!/bin/sh
set -eu

log() {
  printf "[demo] %s\n" "$1"
}

log_marker() {
  local marker="$1"
  local step_name="$2"
  printf "=== %s: %s ===\n" "$marker" "$step_name"
}

step_name="soft-failure"
log_marker "STEP START" "$step_name"
log "step=$step_name status=running"
log "detail=simulated_non_zero_exit"
log_marker "STEP END (FAILED)" "$step_name"
exit 2
