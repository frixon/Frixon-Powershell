
# Licensed users of Microexcel
$ALLUsers = Get-MsolUser -All | ?{ $_.isLicensed -eq "TRUE" }

#This part can run for several SKUs
$sku = "MICROEXCEL1:STANDARDPACK"
$MEStd = $ALLUsers | ?{ ($_.Licenses | ?{ $_.AccountSkuId -eq $sku}).Length -gt 0}

$sku1 = "MICROEXCEL1:ENTERPRISEPACK"
$MEEnt = $ALLUsers | ?{ ($_.Licenses | ?{ $_.AccountSkuId -eq $sku1}).Length -gt 0}

$MEStd | Select-Object  DisplayName, UserPrincipalName | Export-Csv MicroexcelStd.csv
$MEEnt | Select-Object  DisplayName, UserPrincipalName | Export-Csv MicroexcelEnt.csv

#####################################################################################

# Licensed users of MicrocomSolution
$ALLUsers1 = Get-MsolUser -All | ?{ $_.isLicensed -eq "TRUE" }

#This part can run for several SKUs
$sku2 = "microcomsolution:ENTERPRISEPACK"
$MCEnt = $ALLUsers1 | ?{ ($_.Licenses | ?{ $_.AccountSkuId -eq $sku2}).Length -gt 0}

$MCEnt | Select-Object  DisplayName, UserPrincipalName | Export-Csv MicrocomSolutionEnt.csv

#####################################################################################

# Licensed users of MicroexcelAE
$ALLUsers2 = Get-MsolUser -All | ?{ $_.isLicensed -eq "TRUE" }

#This part can run for several SKUs
$sku3 = "microexcelae:O365_BUSINESS_ESSENTIALS"
$MEAEEnt = $ALLUsers2 | ?{ ($_.Licenses | ?{ $_.AccountSkuId -eq $sku3}).Length -gt 0}

$MEAEEnt | Select-Object  DisplayName, UserPrincipalName | Export-Csv MicroexcelAEE3.csv

#####################################################################################