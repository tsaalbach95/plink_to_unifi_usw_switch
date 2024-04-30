# Load the encrypted password from the file
$encryptedPassword = Get-Content "C:\Scripte\pwd.txt" | ConvertTo-SecureString

# Convert the SecureString to plain text
$password = [System.Runtime.InteropServices.Marshal]::PtrToStringAuto([System.Runtime.InteropServices.Marshal]::SecureStringToBSTR($encryptedPassword))

# Use the plain text password with plink
plink -ssh "IP-ADDRESS" -l "admin" -pw $password -no-antispoof "swctrl poe set off id 44;sleep 20;swctrl poe set auto id 44;sleep 20;swctrl poe set off id 26;sleep 20;swctrl poe set auto id 26"
