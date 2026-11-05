
$ErrorActionPreference = "Stop"

$base = "docs\curriculum"
New-Item -ItemType Directory -Force -Path $base | Out-Null

$modules = @(
    "01-nextjs",
    "02-nodejs-middleware",
    "03-fastapi",
    "04-firebase-auth",
    "05-mongodb-vector-search",
    "06-pinecone",
    "07-redis",
    "08-docker",
    "09-gcp",
    "10-langchain",
    "11-google-adk",
    "12-agentic-ai"
)

foreach ($module in $modules) {

    $folder = Join-Path $base $module
    New-Item -ItemType Directory -Force -Path $folder | Out-Null

    $content = @"
# $module

## Objective
Understand the technology and its role in JourneyBuddy AI.

## Concept
Explain the important concepts, features, and working principles.

## Architecture
Describe the components, architecture, and request flow.

## Practical Exercise
- Explain the practical implementation.
- Describe inputs and outputs.
- Include configuration and validation.
- Document error handling and security.

## JourneyBuddy AI Integration
Explain how this module connects to JourneyBuddy AI.

## Implementation Status
Clearly distinguish implemented features from planned integrations.

## References
- Official documentation
- Assignment reference links
"@

    Set-Content -Path (Join-Path $folder "README.md") -Value $content -Encoding UTF8
}

$integration = @"
# JourneyBuddy AI Integration Architecture

## Project Goal
Design an intelligent internship discovery and career roadmap assistant.

## Architecture

```mermaid
flowchart TD
    U[User] --> W[Next.js Frontend]
    W --> G[Node.js Gateway - Design]
    G --> F[Firebase Authentication - Design]
    G --> R[Redis Rate Limiting - Design]
    G --> A[FastAPI Backend]
    A --> M[MongoDB Vector Search - Design]
    A --> P[Pinecone - Design]
    A --> L[LangChain and Agentic AI - Design]
    L --> T[Approved Tools]
    A --> C[Docker and GCP Deployment - Design]
```

## Current Application
JourneyBuddy currently includes a Next.js frontend and FastAPI backend with internship listings and roadmap generation.

## Planned Integrations
- Firebase authentication
- Node.js API gateway
- Redis rate limiting
- MongoDB Vector Search
- Pinecone
- LangChain
- Agentic AI
- Docker
- Google Cloud deployment

## Security
- Validate incoming requests.
- Protect API keys and credentials.
- Apply authentication and authorization.
- Use rate limiting.
- Restrict agent tools.
- Never commit secrets to GitHub.

## Deployment
Containerize application services, configure environment variables, deploy to Google Cloud Run, and verify health checks.

## Status
This document describes the architecture. Planned integrations must be configured and tested before being marked operational.
"@

New-Item -ItemType Directory -Force -Path "docs" | Out-Null

Set-Content `
    -Path "docs\INTEGRATION_ARCHITECTURE.md" `
    -Value $integration `
    -Encoding UTF8

Write-Host ""
Write-Host "Documentation folders created successfully!" -ForegroundColor Green
Write-Host "12 module README files created." -ForegroundColor Green
Write-Host "Integration architecture created." -ForegroundColor Green
