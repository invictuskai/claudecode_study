# Usage: powershell -File .claude/set-session-context.ps1 "Refactoring auth module"
param(
    [Parameter(Position=0)]
    [string]$Context
)

$contextFile = "$env:TEMP\claude-session-context.txt"

if ($Context) {
    $Context | Out-File -FilePath $contextFile -Encoding UTF8 -NoNewline
    Write-Host "Session context set: $Context"
} else {
    if (Test-Path $contextFile) {
        Remove-Item $contextFile
        Write-Host "Session context cleared."
    }
}
