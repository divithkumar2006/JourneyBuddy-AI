# Module 3 — FastAPI and Strict Validation

## Objective
Use Pydantic request models and parameterized endpoints to validate input and return predictable errors.

## Example schema
```python
from pydantic import BaseModel, Field

class MatchRequest(BaseModel):
    skills: list[str] = Field(min_length=1, max_length=30)
    preferred_domain: str = Field(min_length=2, max_length=80)
    preferred_location: str = Field(min_length=2, max_length=80)
```

## Rules
- Define request and response models.
- Validate lengths, types, and allowed values.
- Return clear 4xx errors for invalid input.
- Never silently accept malformed payloads.
- Keep API routes documented in OpenAPI/Swagger.

## Task artifact
Document schemas and validation flow for `/internships/match` and `/roadmap/`.

## Conceptual exercise
Explain how schema validation prevents invalid data from reaching application logic.

## Reference
- https://fastapi.tiangolo.com/
