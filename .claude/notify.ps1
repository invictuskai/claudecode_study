Add-Type -AssemblyName System.Windows.Forms

# Read stdin JSON from Notification hook
$inputJson = [Console]::In.ReadToEnd()

# Try to extract message from hook's stdin JSON
$notifyMessage = "Claude Code needs your attention"
try {
    $data = $inputJson | ConvertFrom-Json
    if ($data.message) {
        $notifyMessage = $data.message
    }
} catch {
    # fallback to default message
}

# Read session context if available
$contextFile = "$env:TEMP\claude-session-context.txt"
$sessionContext = ""
if (Test-Path $contextFile) {
    $sessionContext = (Get-Content $contextFile -Raw).Trim()
}

# Build notification title with session context
if ($sessionContext) {
    $title = "Claude Code - $sessionContext"
} else {
    $title = "Claude Code"
}

$balloon = New-Object System.Windows.Forms.NotifyIcon
$balloon.Icon = [System.Drawing.SystemIcons]::Information
$balloon.BalloonTipIcon = 'Info'
$balloon.BalloonTipTitle = $title
$balloon.BalloonTipText = $notifyMessage
$balloon.Visible = $true
$balloon.ShowBalloonTip(5000)
Start-Sleep -Milliseconds 500
