Harness Quickstart for Engineers
================================

Practical orientation for engineers who run, monitor, and respond to pipeline
executions without owning Harness administration.

Why This Quickstart Exists
--------------------------

Engineers often encounter Harness during a failure, a deployment, or a release
window. This guide focuses on **execution context**, **failure signals**, and
**triage decisions** you can make without deep configuration knowledge.

This is **usage**, not **administration**.

Who This Is For
--------------

Primary:

- Engineers running or monitoring pipelines.

Secondary:

- Service owners participating in incident response.

What You Will Do
----------------

By the end of this guide, you should be able to:

- Find the **right execution** quickly.
- Read the **execution graph** for context.
- Use **failure summaries** before logs.
- Interpret **signals** without over-trusting them.
- Escalate with **actionable evidence**.

What You Will Not Do
--------------------

To stay focused, you will not:

- Design or edit production pipelines.
- Configure connectors, secrets, or environments.
- Customize dashboards or AI settings.

Prerequisites
-------------

- Access to Harness with permission to view executions.
- At least one pipeline execution in the environment.

Step 1: Find the Right Execution
--------------------------------

What to do:

- Navigate to **Pipelines** and open **Executions** or **Runs**.
- Filter by **time window**, **pipeline name**, or **status**.
- Select the most recent **failed** or **suspicious** run.

What to observe:

- Does the timeline show **spikes** in failures?
- Are failures **clustered** around a time or release?

Why this matters:

Starting with the right execution reduces noise and speeds triage.

Screenshot placeholder:

- Executions list filtered by status and time.

Step 2: Read the Execution Graph First
--------------------------------------

What to do:

- Open the execution graph and scan the **stage flow**.
- Identify the **first failing stage**.
- Note any **parallel** or **conditional** branches.

What to observe:

- Where Harness highlights **context** versus **detail**.
- Whether the flow is **linear**, **fan-out**, or **nested**.

Why this matters:

The graph provides the fastest path to understanding scope and impact.

Screenshot placeholder:

- Execution graph with highlighted failure stage.

Step 3: Use Failure Summaries Before Logs
-----------------------------------------

What to do:

- Open the **failure summary** or **error panel**.
- Capture the **error type**, **step name**, and **stage context**.
- Only then open logs for **verification**.

What to observe:

- Whether the summary indicates **cause**, **symptom**, or **impact**.
- If the failure is **systemic** or **isolated**.

Why this matters:

Logs are necessary, but summaries get you to the right place faster.

Screenshot placeholder:

- Failure summary panel with context visible.

Step 4: Check Upstream and Downstream Context
---------------------------------------------

What to do:

- Identify whether the execution triggers **child pipelines**.
- If applicable, inspect **parent pipeline** context.

What to observe:

- Whether failures **propagate** or **cascade**.
- If a downstream issue is **root cause** or **symptom**.

Why this matters:

Multi-pipeline systems rarely fail in isolation.

Screenshot placeholder:

- Parent-child execution context view.

Step 5: Interpret Signals and Insights
--------------------------------------

What to do:

- Review **dashboards**, **metrics**, or **AI insights** if visible.
- Note any **anomalies**, **trend shifts**, or **outliers**.

What to observe:

- Whether the signal is **correlated** or **causal**.
- If confidence language is **strong** or **tentative**.

Why this matters:

Signals help you prioritize attention, not conclude root cause.

Screenshot placeholder:

- AI insight or metrics trend panel.

Step 6: Escalate with Evidence
------------------------------

What to do:

- Collect the **execution link**, **failed stage**, and **summary**.
- Note any **environment**, **service**, or **version** context.
- Share with the on-call or platform owner.

Why this matters:

Clear evidence accelerates response and reduces back-and-forth.

Screenshot placeholder:

- Execution summary with key identifiers visible.

Common Mistakes to Avoid
------------------------

- Skipping the execution graph and jumping to logs.
- Treating AI insights as root cause.
- Ignoring parent-child context.
- Escalating without actionable details.

What Comes Next
--------------

Continue with:

- `docs/02-pipeline-execution-and-visibility.md`
- `docs/04-understanding-failures.md`
- `playbooks/failure-triage.md`

Final Note
----------

Harness does not replace engineering judgment. It gives you better signals.
Use them to shorten the path from **failure** to **decision**.
