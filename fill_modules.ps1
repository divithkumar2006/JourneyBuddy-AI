
$ErrorActionPreference = "Stop"

$base = "docs\curriculum"

$docs = @{
"01-nextjs" = @"
# Module 1: Next.js Frontend Architecture

## Concepts
- App Router and file-based routing
- Pages, layouts, and components
- Server and Client Components
- Data fetching and API routes

## Practical Exercise
Create an internship dashboard with homepage, internship listing, details, and application form.

## JourneyBuddy Integration
Next.js provides the frontend for internship discovery and roadmap generation.

## References
- https://nextjs.org/docs
- https://react.dev
"@

"02-nodejs-middleware" = @"
# Module 2: Node.js Middleware

## Concepts
- Express middleware
- Request and response lifecycle
- Logging and error handling
- Authentication middleware
- Rate limiting

## Practical Exercise
Create an Express server with logging, validation, and a health endpoint.

## JourneyBuddy Integration
A Node.js gateway can manage authentication, rate limiting, and routing.

## References
- https://nodejs.org/docs/latest/api/
- https://expressjs.com/en/guide/using-middleware.html
"@

"03-fastapi" = @"
# Module 3: FastAPI

## Concepts
- API routes and HTTP methods
- Pydantic validation
- Async endpoints
- Dependency injection
- Swagger documentation

## Practical Exercise
Create internship and roadmap endpoints with validated JSON requests.

## JourneyBuddy Integration
FastAPI powers internship listing, matching, and roadmap APIs.

## References
- https://fastapi.tiangolo.com/
- https://docs.pydantic.dev/
"@

"04-firebase-auth" = @"
# Module 4: Firebase Authentication

## Concepts
- Registration and login
- Email/password authentication
- Google sign-in
- Authentication tokens
- Protected routes

## Practical Exercise
Configure Firebase Authentication and protect a dashboard.

## JourneyBuddy Integration
Firebase can authenticate users and protect saved internships and roadmaps.

## References
- https://firebase.google.com/docs/auth
"@

"05-mongodb-vector-search" = @"
# Module 5: MongoDB Atlas Vector Search

## Concepts
- Documents and collections
- CRUD operations
- Embeddings
- Vector indexes
- Similarity search

## Practical Exercise
Store internship descriptions, generate embeddings, and retrieve similar opportunities.

## JourneyBuddy Integration
MongoDB can store internship records, user profiles, and semantic search data.

## References
- https://www.mongodb.com/docs/
- https://www.mongodb.com/docs/atlas/atlas-vector-search/
"@

"06-pinecone" = @"
# Module 6: Pinecone

## Concepts
- Vector indexes
- Namespaces
- Upsert and query
- Metadata filters
- Similarity scores

## Practical Exercise
Create a Pinecone index and query sample internship embeddings.

## JourneyBuddy Integration
Pinecone can retrieve semantically relevant internships and learning resources.

## References
- https://docs.pinecone.io/
"@

"07-redis" = @"
# Module 7: Redis

## Concepts
- Key-value storage
- Cache expiration
- TTL
- Counters
- Rate limiting

## Practical Exercise
Cache internship API responses and implement an expiring request counter.

## JourneyBuddy Integration
Redis can cache frequently requested data and enforce API rate limits.

## References
- https://redis.io/docs/latest/
"@

"08-docker" = @"
# Module 8: Docker

## Concepts
- Images and containers
- Dockerfiles
- Container ports
- Environment variables
- Docker Compose

## Practical Exercise
Create frontend and backend Dockerfiles and run services using Docker Compose.

## JourneyBuddy Integration
Docker packages Next.js and FastAPI services for consistent deployment.

## References
- https://docs.docker.com/
"@

"09-gcp" = @"
# Module 9: Google Cloud Platform

## Concepts
- Cloud projects
- Cloud Run
- Artifact Registry
- Cloud Build
- IAM

## Practical Exercise
Deploy a containerized API to Cloud Run and verify its health endpoint.

## JourneyBuddy Integration
Google Cloud Run can host JourneyBuddy backend services.

## References
- https://cloud.google.com/docs
- https://cloud.google.com/run/docs
"@

"10-langchain" = @"
# Module 10: LangChain

## Concepts
- Chat models
- Prompt templates
- Chains
- Retrievers
- Tool calling
- Retrieval-Augmented Generation (RAG)

## Practical Exercise
Create an assistant that retrieves internship information and generates a career roadmap.

## JourneyBuddy Integration
LangChain can combine internship retrieval and roadmap generation into an AI workflow.

## References
- https://docs.langchain.com/
"@

"11-google-adk" = @"
# Module 11: Google Agent Development Kit

## Concepts
- Agent definitions
- Instructions
- Tools
- Agent orchestration
- Sessions and state
- Evaluation

## Practical Exercise
Build an agent that retrieves career information and produces a structured response.

## JourneyBuddy Integration
ADK can orchestrate career guidance agents and tool-based workflows.

## References
- https://google.github.io/adk-docs/
"@

"12-agentic-ai" = @"
# Module 12: Agentic AI Skills

## Concepts
- Agent goals and planning
- Tool usage
- Skill instructions
- Context management
- Human approval
- Safety and evaluation

## Practical Exercise
Define a career guidance skill with instructions, allowed tools, and safety constraints.

## JourneyBuddy Integration
Agent skills can organize internship search and roadmap generation into reusable workflows.

## References
- https://agentskills.io/
"@
}

foreach ($module in $docs.Keys) {
    $folder = Join-Path $base $module
    New-Item -ItemType Directory -Force -Path $folder | Out-Null

    Set-Content `
        -Path (Join-Path $folder "README.md") `
        -Value $docs[$module] `
        -Encoding UTF8
}

Write-Host "All 12 module README files updated!" -ForegroundColor Green
