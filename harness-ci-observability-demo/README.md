Harness CI Observability Demo
=============================

Purpose
-------

This folder contains a lightweight demo used to illustrate **pipeline
observability**, **failure surfacing**, and **signal interpretation** in
Harness CI. It is intentionally minimal and safe for sandbox environments.

What This Demo Is (and Is Not)
------------------------------

This demo is:

- A simple, repeatable execution for screenshots and training.
- Safe to run in a demo or sandbox environment.
- Focused on observability signals, not build performance.

This demo is not:

- A production pipeline template.
- A benchmark or load test.
- A substitute for real incident data.

Files
-----

- `build.sh`: A simple script that simulates a multi-step build with a
  controllable failure point.
- `soft-fail.sh`: A script that exits non-zero to simulate an expected failure
  without stopping the pipeline.
- `pipeline.yaml`: Minimal Harness CI pipeline example for running the demo.
- `react-demo/`: Minimal React component test using Vitest and Testing Library.

How to Use
----------

1. Connect this folder as a repository in Harness CI.
2. Create a pipeline that runs `build.sh` (see `pipeline.yaml`).
3. Toggle the failure behavior using environment variables (see below).

Configuration
-------------

The script supports a minimal set of options via environment variables:

- `DEMO_FAIL_STEP`: Step name to fail (default: none).
- `DEMO_SLEEP_SEC`: Delay per step in seconds (default: 2).
- `DEMO_PARALLEL`: Run a parallel quality-gate group (default: 0).

Step names you can target with `DEMO_FAIL_STEP`:

- `checkout`, `build`, `test`, `package`
- `lint`, `unit-tests` (only when `DEMO_PARALLEL=1`)

Example:

```sh
DEMO_FAIL_STEP=test DEMO_SLEEP_SEC=1 ./build.sh
```

Expected Behavior
-----------------

- Successful run: all steps complete and the script exits 0.
- Failure run: the selected step fails and the script exits non-zero.
- Soft failure step: the script exits non-zero but the pipeline continues.
- Summary artifact: `artifacts/demo-summary.json` is created in the workspace.
- React test step: runs a component test suite with Vitest.
- S3 upload step: uploads `artifacts/` when runtime inputs are provided.

Failure-Mode Matrix
-------------------

| Mode | How to trigger | What to observe |
| --- | --- | --- |
| Baseline success | No environment variables | Full execution flow, all steps green |
| Targeted failure | `DEMO_FAIL_STEP=build` | First failing stage and summary context |
| Parallel failure | `DEMO_PARALLEL=1 DEMO_FAIL_STEP=lint` | Parallel branch highlighting and propagation |
| Soft failure | Runs automatically | Non-zero exit that does not halt the pipeline |

Notes
-----

- Use this demo to capture screenshots for the quickstarts and mental model
  docs.
- The pipeline example includes a soft-failure step and summary output to
  illustrate observability without halting the demo flow.
- Keep screenshots sanitized and follow `assets/screenshots/redaction-guide.md`.
