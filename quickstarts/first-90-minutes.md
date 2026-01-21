First 90 Minutes with Harness
=============================

What to look at, what to ignore, and how to orient yourself.

Why This Quickstart Exists
--------------------------

The first mistake teams make with Harness is trying to configure everything
before they understand what they are looking at.

Harness surfaces more information than traditional CI/CD tools: pipelines,
stages, execution graphs, dashboards, and AI-assisted signals. Without a mental
model, this leads to confusion, not clarity.

This quickstart is designed to help you use your first 90 minutes to:

- **Understand** how Harness presents **pipeline behavior**.
- **Learn** where **failures** surface.
- **Recognize** which **signals** matter early.
- **Avoid** common **misinterpretations**.

This is **orientation**, not **setup**.

Who This Is For
--------------

Primary:

- **DevOps** and **Platform** teams newly working with Harness.

Secondary:

- Engineers running or monitoring pipelines.

You do not need prior Harness expertise to follow this guide.

What You Will Not Do in the First 90 Minutes
---------------------------------------------

To stay focused, do not attempt to:

- Design production pipelines.
- Migrate existing CI/CD workflows.
- Tune AI features.
- Optimize dashboards.

Those come later. Right now, the goal is **sensemaking**.

0-15 Minutes: Establish the Harness Mental Model
------------------------------------------------

What to do:

- Log in and locate:
  - The **CI/CD** section.
  - **Pipelines**.
  - **Executions** or **Runs** view.
- Do not create anything yet.

What to observe:

- Where does Harness show **status** versus **context**?
- Is information grouped by **time**, **pipeline**, or **outcome**?

Why this matters:

Harness is designed to show behavior over time, not just pass/fail events. If
you treat it like a log viewer, you will miss its value.

Screenshot placeholder:

- Top-level pipelines or executions view.
- Purpose: show initial orientation, not details.

15-30 Minutes: Explore a Pipeline Execution
-------------------------------------------

What to do:

- Open any existing pipeline execution (or a sample/demo one).
- Focus on:
  - **Execution graph**.
  - **Stages** and **steps**.
  - **Status indicators**.
- Do not dive into logs yet.

What to observe:

- How success and failure are visualized.
- Whether the execution is **linear** or **hierarchical**.
- Where Harness draws attention visually.

Why this matters:

Harness emphasizes structure and flow before details. This is intentional.
Understanding the structure speeds up triage later.

Screenshot placeholder:

- Pipeline execution graph with stages visible.

30-45 Minutes: Understand Failure Presentation
----------------------------------------------

What to do:

- Find a failed or partially failed execution.
- If none exist:
  - Trigger a simple failure in a demo pipeline.
  - Or explore a sample execution.

What to observe:

- How failure is summarized.
- Whether child steps or stages are highlighted.
- What Harness surfaces before logs.

Key question:

- Does Harness tell you that something failed, or does it hint at **where**
  and **why**?

Why this matters:

Harness is designed to reduce time spent hunting through logs. Failure
summaries are the starting point, not the endpoint.

Screenshot placeholder:

- Failure summary view showing stage or step context.

45-60 Minutes: Parent and Child Pipeline Awareness
--------------------------------------------------

What to do:

- If your environment supports it:
  - Identify a pipeline that triggers another pipeline.
  - Or explore an execution with nested stages.

What to observe:

- Whether failures propagate upward.
- How context is preserved between executions.
- Where visibility improves compared to flat pipelines.

Why this matters:

In real systems, failures are rarely isolated. Harness provides cross-pipeline
visibility that must be learned to be used effectively.

Screenshot placeholder:

- Parent execution showing child pipeline context.

60-75 Minutes: Dashboards and Signals
-------------------------------------

What to do:

- Navigate to:
  - **Dashboards**.
  - **Metrics** or **Analytics** views.
- Do not customize yet.

What to observe:

- Trends instead of individual events.
- Failure frequency.
- Repeated patterns.

What to ignore (for now):

- Advanced filtering.
- Fine-grained tuning.
- Long time ranges.

Why this matters:

Dashboards are about patterns, not explanations. They tell you where to look,
not what to do.

Screenshot placeholder:

- Dashboard showing trends across runs.

75-90 Minutes: AI Insights and Signals (If Enabled)
---------------------------------------------------

What to do:

- If AI-assisted insights are visible:
  - Locate anomaly indicators or insights.
  - Read the explanation text carefully.

What to observe:

- What the AI is confident about.
- What it phrases as **probable** or **correlated**.
- What it does not conclude.

Critical mindset:

AI insights are **signals**, not **decisions**. They help prioritize attention,
not replace investigation.

Why this matters:

Over-trust leads to missed root causes. Under-trust leads to ignored value.
Good teams learn the middle ground early.

Screenshot placeholder:

- AI insight or anomaly explanation panel.

What "Good Orientation" Looks Like After 90 Minutes
----------------------------------------------------

After this quickstart, you should be able to say:

- I know where to look first when something fails.
- I understand how Harness surfaces context.
- I know what dashboards are for.
- I know when logs matter and when they do not.
- I understand the role of AI signals.

If not, repeat the sections above before moving on.

Common Early Mistakes to Avoid
------------------------------

- Jumping straight into logs.
- Treating AI insights as root cause.
- Over-customizing dashboards too early.
- Ignoring execution structure.

These slow teams down.

What Comes Next
--------------

Once orientation is complete, proceed to:

- `docs/01-harness-mental-model.md`
- `docs/04-understanding-failures.md`
- `playbooks/failure-triage.md`

Those documents build on what you have just learned.

Final Note
----------

Harness does not make systems reliable by itself. Understanding how it
communicates failure does. Take the time to learn that language early.
