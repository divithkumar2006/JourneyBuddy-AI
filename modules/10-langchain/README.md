# Module 10 — LangChain RAG Pipeline

## Objective
Build a context-augmented retrieval flow with clear stages.

## Pipeline
`Question → normalize → retrieve (Mongo/Pinecone) → filter/rerank → assemble context → model invocation → output parser → answer + sources`

## Requirements
- Ground answers in retrieved context.
- Handle no-result cases honestly.
- Keep prompt templates versioned.
- Limit context size and model output.
- Parse/validate structured outputs.
- Do not expose API keys or internal prompts.

## Task artifact
Document each pipeline stage and retrieval flow in `docs/diagrams/rag-pipeline.mmd`.

## Conceptual exercise
Explain RAG vs fine-tuning and why retrieved source context improves traceability.

## Reference
- https://python.langchain.com/docs/
