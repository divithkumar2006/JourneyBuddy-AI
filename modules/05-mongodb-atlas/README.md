# Module 5 — MongoDB Atlas and Vector Search

## Objective
Model internship documents in BSON and describe hybrid retrieval.

## Suggested document
```json
{
  "_id": "internship-001",
  "title": "AI/ML Intern",
  "company": "Example Company",
  "location": "Pune",
  "domain": "AI",
  "skills": ["Python", "Machine Learning"],
  "description": "Internship description",
  "embedding": [0.12, 0.34, 0.56]
}
```

## Retrieval
- Filter structured fields (location, domain, eligibility).
- Vector search retrieves semantically similar descriptions.
- Combine semantic results with keyword/metadata filters.
- Validate embedding dimensions and index configuration.
- Do not store secrets or unnecessary personal information.

## Task artifact
Document collection schema, index assumptions, and hybrid query flow.

## Conceptual exercise
Compare exact keyword matching with vector similarity and explain when hybrid search is useful.

## Reference
- https://www.mongodb.com/docs/atlas/atlas-vector-search/
