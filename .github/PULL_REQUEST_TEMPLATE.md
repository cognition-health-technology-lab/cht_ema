## PR Title (Conventional Commits)

<!--
Use:  type(scope): summary

Types: feat | fix | docs | ci | chore | refactor | test | perf | deps
Scopes: cognitive-tasks | surveys | general

Examples:
- feat(cognitive-tasks): add variable ISI to reaction time
- fix(surveys): correct IPAQ vigorous prompt
- docs(general): document melos bootstrap & VS Code tasks
-->

## Description

<!-- Describe what it does and why. Be brief but specific. Link to design docs if needed. -->

## Related Issue(s)

<!-- Link issues that this PR closes/fixes. Use keywords so GitHub auto-closes:
Closes #123, Fixes #456, Resolves #789
-->

## Packages Affected

<!-- Mark with an `x` all that apply -->

- [ ] packages/cht_ema_cognitive_tasks
- [ ] packages/cht_ema_surveys
- [ ] general (monorepo / CI / docs)

## Screenshots / Recordings (optional)

<!-- GIFs or images help reviewers understand UI changes. -->

## Test Plan

<!-- How did you verify this change? Add precise steps and expected outcomes. -->

- [ ] Unit tests added/updated for new/changed logic
- [ ] Example app(s) updated and manually tested

## Impact Checklist

<!-- Mark with an `x` all that apply and add details below when checked -->

- [ ] **Feature** (new feature)
- [ ] **Improvement** (improved existing feature, refactor or improve code, measurable performance boost)
- [ ] **Fix** (Fixes a bug)
- [ ] **Public API change** (new/changed parameters, return types, or behavior)
- [ ] **Breaking change** (requires host apps to update code)
- [ ] **Docs** (README, example apps, or comments)
- [ ] **Internalization** (language strings updated)
- [ ] **CI/config/chore** (melos, CI workflows, release-drafter, dependencies)
- [ ] **Security** (auth, permissions, secrets)
- [ ] **Other changes** not listed above (explain below)

**Details for any checked items above:**

<!-- Briefly explain the change & migration notes if needed. -->

## Pre-merge Checks

- [ ] I read the project's code of conduct (see below)
- [ ] I read the contributing guide
- [ ] Title follows **type(scope): summary** and will auto-label the PR
- [ ] Ran locally: `dart run melos bootstrap`
- [ ] Ran code formatter: `dart run melos run analyze`
- [ ] Ran static analysis: `dart run melos format`
- [ ] Ran tests: `dart run melos run test`
- [ ] Checked Android example apps build `dart run melos run build_android_examples`
- [ ] Checked iOS example apps build `dart run melos run build_ios_examples`

---

### Contributor Guidelines

By opening this PR you agree to follow our Code of Conduct:
https://www.contributor-covenant.org/version/1/4/code-of-conduct/
