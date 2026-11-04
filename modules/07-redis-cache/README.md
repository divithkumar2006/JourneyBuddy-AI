# Module 7 — Redis Cache-Aside

## Objective
Use cache-aside to reduce repeated database reads.

## Workflow
`Request → Redis GET → hit: return cached result → miss: read DB → Redis SET with TTL → return result`

## Key model
- Key: `internships:match:<normalized-query-hash>`
- Value: serialized match response
- TTL: short configurable duration (example: 300 seconds)
- Invalidate/update cache when source records change.

## Safety
- Never cache credentials.
- Avoid placing raw email or other personal identifiers in keys.
- Handle Redis unavailable by falling back to database where appropriate.
- Monitor hit rate and memory.

## Task artifact
Document cache key, TTL, miss/hit behavior, and invalidation.

## Conceptual exercise
Explain stale data and why TTL/invalidation are needed.

## Reference
- https://redis.io/docs/
