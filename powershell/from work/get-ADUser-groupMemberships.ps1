

$User = Read-Host "User"

Get-ADUser $user -Properties MemberOf | `
Select-Object -ExpandProperty MemberOf | ForEach-Object { (Get-ADGroup $_).Name } | Sort-Object -Descending