---
description: Create requirements definition
---

## Phase1: ユーザーと対話し、要件定義書(doc/requirements.md)を作成する

### 記述内容の原則

- Clarity: Requirements are unambiguous and easy to understand
- Testability: Each requirement can be directly translated into test cases
- Traceability: Individual requirements can be tracked through implementation
- Completeness: The format encourages thinking through all conditions and behaviors

### 記述方式
#### User Storyの書き方
```
{{role}}として、{{action}}したい。そうすることで、{{benefit}}できる
```

#### Acceptance Criteriaの書き方
- 受入基準には正常系パターンと異常系パターンの2種類ある
- 正常系、異常系の順で受入基準を複数記述する

##### 正常系の書き方
```
WHEN [condition/event]した時 THEN [system_name]は[expected_behavior]する
```

##### 異常系の書き方
```
IF [condition/event]が発生した場合 THEN [system_name]は[expected_behavior]する
```

### 要件定義書の構造

```markdown
# Epic: {{epic_name}}

## Feature: {{feature_name1}}

**User Story: {{user_story}}

### Acceptance Criteria

- {{acceptance_criteria1}}
- {{acceptance_criteria2}}
- {{acceptance_criteria3}}
- {{acceptance_criteria4}}
- {{acceptance_criteria5}}
- {{acceptance_criteria6}}

## Feature: {{feature_name2}}

**User Story: {{user_story}}

### Acceptance Criteria

- {{acceptance_criteria1}}
- {{acceptance_criteria2}}
```

## Phase2: User StoryとAcceptance Criteriaの内容・粒度をINVEST指標で検証し、修正する

### INVEST指標

- **Independent:** 独立して開発・テスト・リリース可能である
- **Negotiable:** 何を達成したいか(What)共有し、どう実現するか(How)は適応する余地を残す
- **Valuable:** エンドツーエンドで動作し、エンドユーザーまたはビジネスに対して具体的な価値を提供できる
- **Estimable:** 実装方法と複雑さが想像できる
- **Small:** 1週間の開発サイクルに収まるよう小さくする
- **Testable:** 何をテストすればいいか(What)明確である
