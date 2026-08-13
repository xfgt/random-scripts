


$user = Read-host "Username"

#Test for valid user
Unlock-ADAccount $user

try{


    if($?) { # if last command ran successfully
        

        $NewPassword = (Read-Host -Prompt "Provide new password" -AsSecureString)
        Set-ADAccountPassword -Identity $user -NewPassword $NewPassword -Reset

        
    } else {
        Write-Host "Failed :("
    }


} catch { #ADIdentityNotFoundException

    Write-Output "An error occurred $($_.Exception.Message)"
    
}