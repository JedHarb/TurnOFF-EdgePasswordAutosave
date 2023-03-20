# TurnOFF-EdgePasswordAutosave
Toggle OFF the slider | Edge > Profiles > Passwords > Automatically Save Passwords

### Problem

Microsoft recently updated Edge to include the setting "Automatically Save Passwords", and it is turned on by default.

This may not be appropriate for business use, as users could sign into websites where they don't want the password to save within their corporate environment. Because this was not a feature in the past, and is turned on by default, users may not realize that Edge is saving the passwords they type. This could be a security concern.

You might wish to have "Offer to save passwords" on, but "Automatically Save Passwords" off. But as of the time of this repository creation, there is no Group Policy or registry key to allow you to change ONLY this setting on a large scale. You would have to turn off Edge's password saving entirely.

### Solution (or at least, a workaround until Microsoft fixes this)

This script edits the local Edge Preferences file to turn this setting off. (It also closes Edge if it's running, as this is a requirement to make changes to the file.)

Since it is run in local context, deploying it on a large scale could be done via SignIn.bat script (if your company uses one). For example:
- Add this script to a folder that is accessible company-wide, such as \\\yourdomain.com\NETLOGON
- Add a line to your SignIn batch file like "powershell -ExecutionPolicy Bypass -File \\\yourdomain.com\NETLOGON\TurnOFF-EdgePasswordAutosave.ps1"

(As with everything, please thoroughly test and vet scripting before large deployments.)
