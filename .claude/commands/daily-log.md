---
allowed-tools: Bash(date:*)
description: Add timestamped log entry to today's Daily Note
---

## Context

- current_timestamp: !`date +%H:%M`
- daily_note_dir: @~/Documents/Obsidian Vault/Daily
- daily_note_path_format: Daily/YYYY/YYYY-MM/YYYY-MM-DD.md
- section_name: `## ⏱️ Log`

## Your task

Add a timestamped log entry to today's DailyNote.

1. Read the {daily_note_path} in Context
2. Locate the {section_name} section
3. Find the insertion point:
  - After any existing log entries
  - Before the next section header
  - Maintain blank line separation from next section
4. Generate a contextual summary in Japanese
5. Insert the formatted entry
  - format:
    ```markdown
    - `{current_timestamp}` {contextual_summary}
    ```
  - example:
    ```makrdown
    - `10:50` 要件定義の作成、デザイン検討
    - `11:21` poll-makerプロジェクト実装
    ```
6. Preserve all other content unchanged
