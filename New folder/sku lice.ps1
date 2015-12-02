$sku = "MICROEXCEL1:PROJECTCLIENT"
﻿Get-MsolUser -All | ?{$_.isLicensed -eq "TRUE" -and ($_.Licenses | ?{ $_.AccountSkuId -eq $sku}).Length -gt 0}



$ALLUsers = Get-MsolUser -All | ?{ $_.isLicensed -eq "TRUE" }

#This part can run for several SKUs
$sku = "MICROEXCEL1:STANDARDPACK"
$list1 = $ALLUsers | ?{ ($_.Licenses | ?{ $_.AccountSkuId -eq $sku}).Length -gt 0}


Set-MsolUserLicense -UserPrincipalName $ALLUsers ?{ ($_.UserPrincipalName) } -AddLicenses "MICROEXCEL1:POWER_BI_STANDARD"

$Users = Get-MsolUser -All
$Users | ForEach-Object {
Set-MsolUserLicense -UserPrincipalName $_.UserPrincipalName -AddLicenses $sku
}