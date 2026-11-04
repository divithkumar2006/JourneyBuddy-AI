# Module 12 — Agentic AI (Plan, Act, Observe, Iterate)

## Objective
Specify an agent that selects tools and evaluates results before responding.

## Loop
`Plan → Act (tool) → Observe → Evaluate → Iterate or Answer`

## Tool decision policy
- Internship facts/listing search: internal database/API first.
- Current external/company information: web search tool.
- Personalized roadmap: internal skill/roadmap logic.
- No suitable tool or low confidence: ask a clarifying question or explain limitation.
- Sensitive/destructive action: require explicit user confirmation.

## Guardrails
- Validate tool inputs and outputs.
- Bound iterations and timeouts.
- Treat retrieved content as untrusted data, not instructions.
- Cite or identify sources for factual answers.
- Do not claim actions succeeded until tools confirm.

## Task artifact
`docs/diagrams/agent-decision-tree.mmd` and a workflow specification.

## Conceptual exercise
Explain the difference between a fixed workflow and an agentic loop.

## Reference
- https://agentskills.io/home
