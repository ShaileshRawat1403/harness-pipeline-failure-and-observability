React Component Test Demo
=========================

Purpose
-------

This demo provides a minimal **React component test** using **Vitest** and
**React Testing Library**. It is designed for real-world pipeline behavior:
install dependencies, run tests, and emit a **JUnit report** for observability.

What This Demonstrates
----------------------

- A small, realistic component test.
- A reproducible test signal during CI runs.
- A JUnit report written to `artifacts/junit.xml`.

How to Run Locally
------------------

From the repo root:

```sh
cd harness-ci-observability-demo/react-demo
npm install
npm run test
```

Output
------

- `artifacts/junit.xml` is generated at the repo root.
- Test output is printed to the console.

Files
-----

- `src/StatusBadge.jsx`: Simple component with status-based output.
- `src/StatusBadge.test.jsx`: Tests for success and non-success states.
- `vitest.config.js`: Vitest configuration (JS DOM + globals).
- `vitest.setup.js`: Test setup for Testing Library matchers.

Notes
-----

- This demo is intentionally small so failures and signals are easy to read.
- Use it to capture pipeline screenshots and test failure behavior.
