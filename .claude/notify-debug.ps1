# Debug: capture stdin JSON from Notification hook
$input_data = [Console]::In.ReadToEnd()
$input_data | Out-File -FilePath "$PSScriptRoot\notify-debug.log" -Append -Encoding UTF8
"---$(Get-Date)---" | Out-File -FilePath "$PSScriptRoot\notify-debug.log" -Append -Encoding UTF8
