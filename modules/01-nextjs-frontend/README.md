# Module 1 — Next.js Frontend Architecture

## Objective
Separate server-rendered structure from interactive client components and organize a multi-page dashboard.

## Architecture
- `app/`: App Router pages and layouts.
- `components/`: reusable UI components.
- Server Components: fetch/render data securely by default.
- Client Components (`"use client"`): state, event handlers, browser APIs.
- Static rendering: stable content such as landing/about pages.
- Dynamic rendering: user-specific or request-dependent content.
- Interactive dashboard: internship search, saved items, and roadmap controls.

## Task artifact
Use a shared layout/navigation and separate pages or sections for internships, roadmap, and profile. Keep interactive forms in Client Components and avoid putting secrets in browser code.

## Conceptual exercise
Explain why a component using `useState` or `onClick` needs a client boundary. Compare static pre-rendering with request-time rendering.

## References
- https://nextjs.org/docs
- https://nextjs.org/docs/app/building-your-application/rendering/server-components
