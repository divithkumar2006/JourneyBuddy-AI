# Module 11 — Google ADK / Client UI Lifecycle

## Objective
Describe client/server interaction, asynchronous requests, state changes, and re-rendering.

## Lifecycle
`User event → UI state/loading → async request → server response → validate response → update state → UI re-render`

## Design notes
- Keep loading/error/success states explicit.
- Prevent stale responses from overwriting newer searches.
- Handle network failures and cancellation.
- Render accessible status and error messages.
- Keep server secrets on server.

## Task artifact
Create `docs/diagrams/client-state.mmd` and describe event-to-render lifecycle.

## Conceptual exercise
Explain asynchronous dispatch and why UI state must represent loading and failure.

## Reference
- https://adk.dev/
