# Module 6 — Pinecone Vector Database

## Objective
Describe the indexing and retrieval lifecycle for semantic internship matching.

## Pipeline
`Prepare text → generate embedding → upsert vector + metadata → query embedding → similarity search → filter/rerank → return matches`

## Metadata examples
`internship_id`, `domain`, `location`, `skills`, `source`, `updated_at`.

## Operational notes
- Use stable vector IDs and namespaces.
- Keep embedding model and dimensions consistent.
- Update/delete vectors when source records change.
- Apply metadata filters for location/domain.
- Keep API keys in environment variables.
- Monitor latency, relevance, and index freshness.

## Task artifact
Write indexing/retrieval pseudocode and document metadata fields.

## Conceptual exercise
Explain cosine similarity and why vector metadata filters complement semantic search.

## Reference
- https://docs.pinecone.io/
