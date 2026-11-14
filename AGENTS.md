<!-- shared-validation-policy:begin -->
## Shared final-candidate validation policy (TheTekTeam + gpcola)

**During development:** run focused, relevant tests and static/syntax/type/lint checks; iterate against the changed code without repeatedly running the full regression suite.

**Only at the final candidate:** run the repository-required full regression and security/no-regression acceptance, then obtain independent review bound to the exact commit SHA and current source/base/policy. Do not merge, deploy, close issues or enable production writes without these required gates; changing the head invalidates head-bound acceptance.

Do not trigger redundant full regression simply from a review request when the same immutable head already has valid green acceptance evidence. Re-run required full gates when the final head changes, trust/execution context changes, evidence expires, or a required gate explicitly calls for it. Project-specific stricter gates remain mandatory, and source-only tests never qualify a deployment.

See the shared policy: https://github.com/gpcola/.github/blob/main/CONTRIBUTING.md.
<!-- shared-validation-policy:end -->
