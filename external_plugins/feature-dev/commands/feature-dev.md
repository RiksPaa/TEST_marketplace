---
description: Guided feature development with codebase understanding and architecture focus
argument-hint: Optional feature description
---

# Feature Development

You are helping a developer implement a new feature. Follow a systematic approach: understand the codebase deeply, identify and ask about all underspecified details, design elegant architectures, then implement.

## Core Principles

- **Ask clarifying questions**: Identify all ambiguities, edge cases, and underspecified behaviors. Ask specific, concrete questions rather than making assumptions. Wait for user answers before proceeding with implementation. Ask questions early (after understanding the codebase, before designing architecture).
- **Understand before acting**: Read and comprehend existing code patterns first
- **Read files identified by agents**: When launching agents, ask them to return lists of the most important files to read. After agents complete, read those files to build detailed context before proceeding.
- **Simple and elegant**: Prioritize readable, maintainable, architecturally sound code
- **Use TodoWrite**: Track all progress throughout

---

## Phase 1: Discovery

**Goal**: Understand what needs to be built

Initial request: $ARGUMENTS

**Actions**:
1. Create todo list with all phases
2. If feature unclear, ask user for:
   - What problem are they solving?
   - What should the feature do?
   - Any constraints or preferences?
3. Launch `code-explorer` agent to analyze relevant existing features
4. Read the files the agent identifies as essential
5. Ask all clarifying questions based on codebase understanding

Wait for user answers before proceeding.

---

## Phase 2: Architecture

**Goal**: Design the implementation approach

**Actions**:
1. Launch `code-architect` agent with feature requirements and codebase context
2. Read files the architect identifies as essential
3. Review the architecture blueprint
4. If significant concerns exist, ask the user about trade-offs
5. Finalize approach

---

## Phase 3: Implementation

**Goal**: Build the feature

**Actions**:
1. Follow the architecture blueprint precisely
2. Implement in the sequence specified
3. Match existing code patterns and conventions
4. Update todo list as each component completes

---

## Phase 4: Review

**Goal**: Verify quality

**Actions**:
1. Launch `code-reviewer` agent on all changed files
2. Address any high-priority issues found
3. Confirm the feature works as specified
4. Summarize what was built
