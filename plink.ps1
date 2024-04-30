Using plink.exe on Windows to restart PoE on Port:
plink -ssh "IP-Adresse" -l "username" -v -pw "password" -no-antispoof "swctrl poe set off id 44;sleep 10;swctrl poe set auto id 44"

