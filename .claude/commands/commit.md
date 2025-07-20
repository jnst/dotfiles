---
allowed-tools: Bash(git add:*), Bash(git status:*), Bash(git commit:*), Bash(git diff:*), Bash(git branch:*), Bash(git log:*)
description: Create a git commit
---

## Context

- Current git status: !`git status`
- Current git diff (staged and unstaged changes): !`git diff HEAD`
- Current branch: !`git branch --show-current`
- Recent commits: !`git log --oneline -10`

## Your task

You must format all commit messages using the Angular Conventional Commit format with an additional `prompt` field. Follow this exact structure:

```
<type>[optional scope]: <description>

prompt: <prompt>

[optional body]

[optional footer]
```

## Format Requirements:

- **type**: Use one of: feat, fix, docs, style, refactor, test, chore, build, ci, perf, revert
- **scope**: Optional. Indicates the area of change (e.g., auth, ui, api)
- **description**: Brief summary of the change in present tense
- **prompt**: Required. The original prompt or instruction that led to this change
- **body**: Optional. Detailed explanation of what and why  (MUST be written in Japanese)
- **footer**: Optional. Breaking changes, issue references, etc.

## Examples:

```
feat(auth): add OAuth2 login integration

prompt: Add Google OAuth login to the application

- Google OAuth2認証フローをトークンリフレッシュ機能付きで実装
- ユーザープロファイルの取得とセッション管理も含まれます

Closes #123
```

```
fix: resolve memory leak in data processing

prompt: Fix the memory issue in the data processor
```

```
docs: update installation instructions

prompt: Update the README with clearer setup steps
```

**Important**: Always include the `prompt:` field at the end of every commit message. This field should contain the original request or instruction that prompted the change.
