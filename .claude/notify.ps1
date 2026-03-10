Add-Type -AssemblyName System.Windows.Forms
$balloon = New-Object System.Windows.Forms.NotifyIcon
$balloon.Icon = [System.Drawing.SystemIcons]::Information
$balloon.BalloonTipIcon = 'Info'
$balloon.BalloonTipTitle = 'Claude Code'
$balloon.BalloonTipText = 'Claude Code needs your attention'
$balloon.Visible = $true
$balloon.ShowBalloonTip(5000)
Start-Sleep -Milliseconds 500
