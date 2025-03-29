# Workflow Guide

## Overview

This document outlines the Git workflow based on GitLab Flow methodology.

## Branch Strategy

### Main Branches

- `main`: Reflects the latest state of development
  - Protected branch
  - Direct pushes prohibited
  - Requires merge request and review
  - Must pass CI/CD checks

### Environment Branches

- `staging`: For staging environment
  - Merged from `main`
  - Integration testing environment
- `production`: For production environment
  - Merged from `staging`
  - Final release destination

### Development Branches

- Feature branches
  - Format: `feature/issue-<number>-<description>`
  - Example: `feature/issue-7-custom-filtering`

## Development Flow

1. Issue Management - 3-Tier Approach

   - Create GitHub Issues using template

   a. Epic (High-Level)

   - Create epics for large initiatives
   - Format: "Epic: [Project Area] - [Goal]"

   b. Issue (Mid-Level)

   - Create issues for manageable chunks of work tied to epics
   - Format: "[Action] [Function/Feature]"
   - Link issues to parent epic
   - Set clear acceptance criteria
   - Add appropriate labels

   c. Task (Low-Level)

   - Create tasks for specific implementation details
   - Format: "Task: [Specific Action]"
   - Link to parent issue

2. Branch Creation

3. Development
   - Create commits using template

```
# <type>: <subject> (Max 50 char)
# |<---- Using a maximum of 50 characters ---->|

# <body> (Optional, wrap at 72 chars)
# |<---- Using a maximum of 72 characters ---------------------------------------------------->|
#
# Explain *what* and *why* this change was made (not *how*).
# Examples of <type>:
#   feat     (new feature)
#   fix      (bug fix)
#   docs     (documentation changes)
#   style    (formatting, etc; no code change)
#   refactor (refactoring code)
#   test     (adding tests, refactoring tests)
#   chore    (updating dependencies, build tasks, etc)
```

4. Pull Request (Pull Request)

   - Create PR using template
   - Link related issues
   - Address review comments

5. Environment Merge Flow
   - Feature branch → `main` (squash and merge)
   - `main` → `staging` (for pre-production verification)
   - `staging` → `production` (for production release)
   - Delete feature branch after merge

## Branch Protection Rules

### Main Branch Protection

- Require pull request reviews before merging
- Require linear history

## Best Practices

1. Keep branches short-lived
2. Regularly rebase with `main`
3. Squash commits before merging
4. Link issues and pull requests
5. Regularly clean up merged branches
6. Maintain consistent deployment process across environments
