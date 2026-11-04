# Module 9 — GCP Cloud Assets and IAM

## Objective
Design private cloud storage and least-privilege permissions.

## Asset layout
- `public-assets/`: public images or non-sensitive static content only.
- `private-assets/`: resumes, application exports, and restricted documents.
- Use separate buckets or prefixes and explicit access controls.

## Permission matrix
| Principal | Public assets | Private assets | Deploy services |
|---|---|---|---|
| Anonymous | Read only if intended | No | No |
| Student user | Read | Own authorized objects only | No |
| API service account | Read | Minimum required access | No |
| Deployment account | As needed | As needed | Deploy |

## Task artifact
Document bucket layout, IAM bindings, and least-privilege rationale. Do not grant public access to private files.

## Conceptual exercise
Explain IAM roles vs individual permissions and why service accounts are preferred for workloads.

## Reference
- https://cloud.google.com/docs
