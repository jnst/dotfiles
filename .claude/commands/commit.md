---
allowed-tools: Bash(git add:*), Bash(git status:*), Bash(git commit:*), Bash(git diff:*), Bash(git branch:*), Bash(git log:*)
description: Create and execute a git commit with angular conventional commit
---

## Context

- Current git status: !`git status`
- Current git diff (staged and unstaged changes): !`git diff HEAD`
- Current branch: !`git branch --show-current`
- Recent commits: !`git log --oneline -10`

## Your task

You will create and execute a git commit. Follow these steps in order:

### Step 1: Analyze Changes
Review the git status and diff output to understand what changes need to be committed.

### Step 2: Stage Changes (if needed)
If there are unstaged changes that should be committed, stage them using:
```bash
git add <files>
```

### Step 3: Create Commit Message
Format the commit message using Angular Conventional Commit format with a `prompt` field:

```
<type>[optional scope]: <description>

prompt: <prompt>

[optional body]

[optional footer]
```

**Format Requirements:**
- **type**: Use one of: feat, fix, docs, style, refactor, test, chore, build, ci, perf, revert
- **scope**: Optional. Indicates the area of change (e.g., auth, ui, api)
- **description**: Brief summary of the change in present tense
- **prompt**: Required. The original prompt or instruction that led to this change
- **body**: Optional. Detailed explanation of what and why
- **footer**: Optional. Breaking changes, issue references, etc.

### Step 4: Execute the Commit

Standard commit (with body):
```bash
git commit -m "feat(test): add CI-optimized test script

prompt: playwrightのテストをciで自動化するには？現在のコマンドではctrl+cを押さないと止まらない

- Add test:e2e:ci script with --reporter=list for CI environments
- Enables automatic termination without manual intervention"
```

Complex commit (with body and footer):
```bash
git commit -m "refactor(data): unify tech stack experience field format

prompt: @tests/fixtures/techstack.json のyearsDisplayがおかしい、year/monthで区別すべき

- Replace inconsistent years/yearsDisplay fields with unified experience field
- Support both years and months format (e.g., '6 years', '2 months')
- Update CLAUDE.md documentation to reflect new data structure

BREAKING CHANGE: Techstack props interface has changed
Closes #123"
```
