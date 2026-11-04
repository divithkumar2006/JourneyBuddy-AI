# JourneyBuddy AI — Integration Architecture

## Goal
A secure internship discovery and personalized learning assistant.

## Request flow
1. Next.js client collects skills, preferred domain/location, and query.
2. Node gateway applies request ID, telemetry, size limits, validation, and rate limit.
3. Firebase ID token is verified for protected user actions.
4. FastAPI exposes typed match and roadmap APIs.
5. Redis caches repeated match queries with TTL.
6. Internship records are stored in MongoDB Atlas; vector embeddings support semantic retrieval.
7. Pinecone can provide a complementary vector index (document sync and metadata filters).
8. LangChain retrieves context, selects allowed tools, and synthesizes grounded output.
9. Docker packages services; GCP deploys with least-privilege service accounts and private storage.
10. GitHub stores code and design docs; secrets remain in deployment environment.

## Trust boundaries
- Browser is untrusted; validate on server.
- Gateway/API verifies identity and permissions.
- Databases and vector stores are private.
- Model/tool output is untrusted and must be validated.
- Do not commit `.env`, service account JSON, tokens, or private student records.

## Deployment checklist
- Configure environment variables and secret manager.
- Enable HTTPS and restrictive CORS.
- Set rate limits and request timeouts.
- Configure health checks and logs without sensitive payloads.
- Test auth, validation, cache fallback, retrieval no-result behavior, and error responses.
- Use non-root containers and least-privilege IAM.
