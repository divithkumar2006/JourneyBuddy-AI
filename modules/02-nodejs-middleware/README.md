# Module 2 — Node.js Gateway and Middleware

## Objective
Define a request pipeline that records telemetry, normalizes input, and rejects unsafe requests.

## Pipeline
`Request → timestamp/trace ID → header inspection → input validation/sanitization → route handler → response → telemetry`

## Middleware responsibilities
- Capture request start time and method/path.
- Inspect content type and request size.
- Normalize accepted inputs; never trust client values.
- Reject malformed or oversized requests.
- Avoid logging passwords, tokens, or personal data.
- Record status code and elapsed time.

## Task artifact
Document the gateway's middleware order and provide a flow diagram in `docs/diagrams/request-pipeline.mmd`.

## Conceptual exercise
Describe how middleware differs from a route handler and why input validation must occur before business logic.

## Reference
- https://nodejs.org/en/docs/
