#This script was made to modify every user's home address to reflect the office address
#Change the address to whatever you want.

Get-Credential
$lusers =  New-Object -TypeName "System.Collections.ArrayList"

$AllUsers = "All Users" 

$lusers += Get-ADGroupMember $AllUsers

foreach($luser in $lusers){
    $username = $luser.SamAccountName
    Set-ADUser -Identity $username -StreetAddress "555 Nowhere Lane" -City "Jax Beach" -State "FL" -PostalCode 32250
    Write-Host $username "address has been changed..."
}
