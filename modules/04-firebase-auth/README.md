# Module 4 — Firebase Authentication Lifecycle

## Objective
Describe secure onboarding and protected-route access.

## Sequence
`User signs in → Firebase issues ID token → client sends Bearer token → server verifies token → authorization check → protected resource`

## Security requirements
- Verify tokens on the server using Firebase Admin SDK.
- Do not trust decoded client-side token data.
- Protect profile/application endpoints.
- Keep service-account credentials out of Git and frontend bundles.
- Handle expired/invalid tokens with 401; insufficient permission with 403.

## Task artifact
Authentication sequence: `docs/diagrams/firebase-auth-sequence.mmd`.

## Conceptual exercise
Distinguish authentication (who you are) from authorization (what you may access).

## Reference
- https://firebase.google.com/docs/auth
