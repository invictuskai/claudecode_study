# Project Instructions

## Session Context Auto-Setting

When you receive the first user message in a conversation, determine a short topic summary (under 15 characters, Chinese is fine) that describes the session's main task. Then immediately run:

```bash
echo -n "topic summary" > "$(cmd.exe //c 'echo %TEMP%' 2>/dev/null | tr -d '\r')/claude-session-context.txt"
```

This sets the notification context for Windows bubble notifications. Do this silently before addressing the user's request - no need to mention it.
