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

Simple commit (no body):
```bash
git commit -m "docs: fix typo in README

prompt: READMEの誤字を修正して"
```

Standard commit (with body):
```bash
git commit -m "fix(api): resolve data validation error

prompt: バリデーションエラーを修正して

- Fix null pointer exception in user input validation
- Add proper error handling for edge cases"
```

Complex commit (with body and footer):
```bash
git commit -m "refactor(ui): simplify component structure

prompt: ナビゲーションコンポーネントを簡潔にして

- Split existing navigation component for better readability
- Remove unnecessary props to improve performance

BREAKING CHANGE: Navigation props interface has changed
Closes #123"
```
