

Search-ADACcount -LockedOut | `
Get-ADUser -Properties * | `
Select-Object # object parameters here, `
              # object parameters here, `
              # object parameters here, `
              # object parameters here end | 

Sort-Object LastBadPasswordAttempt -Descending