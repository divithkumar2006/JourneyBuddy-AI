# Module 8 — Docker Multi-Stage Builds

## Objective
Build small, reproducible images and understand ports and startup.

## Principles
- Use a build stage for dependencies/build output.
- Copy only required artifacts into runtime stage.
- Pin sensible base images and install only required packages.
- Run as a non-root user where possible.
- Use `.dockerignore`.
- Configure ports and environment variables explicitly.
- Never bake credentials into images.

## Task artifact
Root `Dockerfile`/`docker-compose.yml` describe web and API services; production images should be separately optimized.

## Conceptual exercise
Explain why multi-stage builds reduce image size and attack surface.

## Reference
- https://docs.docker.com/
