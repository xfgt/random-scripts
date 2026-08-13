
$user = Read-host "Username"

Get-ADUser -Identity $user -Properties *