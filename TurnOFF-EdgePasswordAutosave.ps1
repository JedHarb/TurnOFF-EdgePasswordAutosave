# Close Edge first. (If the Edge "Preferences" file is changed while Edge is open, it will be overwritten back to the previous text the next time you close and open Edge.)
if ($Edge = Get-Process -Name "msedge" -ErrorAction SilentlyContinue) {
	Stop-Process $Edge
	Wait-Process $Edge -ErrorAction SilentlyContinue
}

$EdgePrefs = "$env:LOCALAPPDATA\Microsoft\Edge\User Data\Default\Preferences" # This file doesn't have an extension, but it is JSON formatting.
(Get-Content $EdgePrefs -raw) -replace [RegEx]::Escape('credentials_enable_autosave":true'),'credentials_enable_autosave":false' | Set-Content -Path $EdgePrefs # Replace autosave true with autosave false.