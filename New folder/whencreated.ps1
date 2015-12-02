$objUsers = get-mailbox -ResultSize Unlimited | select UserPrincipalName 
 
Foreach ($objUser in $objUsers) 
    {     
        $objUserMailbox = get-user -Identity $($objUser.UserPrincipalName) | select identity, whenCreated, whenChanged
 
$strUserPrincipalName = $objUser.UserPrincipalName
$strWhenCreated = $objUserMailbox.whenCreated
$strWhenChanged = $objUserMailbox.whenChanged
#write-host "$strUserPrincipalName : $strWhenCreated : $strWhenChanged"
#Select-Object "$strUserPrincipalName : $strWhenCreated : $strWhenChanged"
Write-Host "$strUserPrincipalName : $strWhenCreated : $strWhenChanged" 
    }