# Full-Demo Agent Memory

## Project: claudecode_study

**Type:** Claude Code learning/study project (no application source code)
**Location:** D:\llm\claudecode_study
**Platform:** Windows 10 (bash shell)
**Not a git repo**

### Project Structure
- `.claude/settings.json` — Claude Code configuration with env vars, model, permissions
- `.claude/agents/` — Three custom subagent definitions: full-demo, doc-editor, doc-reviewer
- `.claude/tech-plan.md` — Multi-agent tech plan workflow (Writer + Reviewer loop)
- `.claude/多案件场景获取用户信息接口.md` — API interface documentation (Chinese, fintech domain)
- `docs/Subagent使用.md` — Chinese translation of Claude Code subagent documentation

### Key Findings (2026-03-10)
- **CRITICAL: settings.json contains hardcoded API keys and auth tokens** (lines 8-11)
- Agent definitions are well-structured with proper YAML frontmatter
- Project uses proxy API endpoints (not direct Anthropic)
- No application source code exists; this is a configuration/documentation study project
- `.idea/` directory present (JetBrains IDE)
