param(
    [Parameter(Position=0, ValueFromRemainingArguments=$true)]
    [string[]]$ClaudeArgs
)

$topic = Read-Host "Session topic (Enter to skip)"
if ($topic) {
    $topic | Out-File -FilePath "$env:TEMP\claude-session-context.txt" -Encoding UTF8 -NoNewline
    Write-Host "Context set: $topic" -ForegroundColor Green
} else {
    # Clear previous context
    $contextFile = "$env:TEMP\claude-session-context.txt"
    if (Test-Path $contextFile) { Remove-Item $contextFile }
    Write-Host "No context set, using default notification." -ForegroundColor Yellow
}

# Launch claude with any extra arguments
if ($ClaudeArgs) {
    & claude @ClaudeArgs
} else {
    & claude
}
