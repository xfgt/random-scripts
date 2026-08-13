$ID = Read-Host "ID"

Get-ADUser -Filter "Pager -eq $ID -or EmployeeID -eq $ID -or Info -eq $ID"