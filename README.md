# TurnOFF-EdgePasswordAutosave
Toggle OFF the slider | Edge > Profiles > Passwords > Automatically Save Passwords

Microsoft recently updated Edge to include the setting "Automatically Save Passwords", and it is turned on by default.
This may not be appropriate for business use, as users may sign into websites where they don't want the password to save within their corporate environment.
As of the time of this repository creation, there is no known Group Policy or registry key to change this on a large scale.

This script edits the local Edge Preferences file to turn this setting off. (It also closes Edge if it's running, as this is a requirement to make changes to the file.)

Since it is run in local context, deploying it on a large scale could be done via SignIn.bat script (if your company uses one). For example:
- Add the script to a folder that is accessible company-wide, such as \\\yourdomain.com\NETLOGON
- Add a line to your SignIn batch file like "powershell -ExecutionPolicy Bypass -File \\\yourdomain.com\NETLOGON\TurnOFF-EdgePasswordAutosave.ps1"

(As with everything, please thoroughly test and vet scripting before large deployments.)
