Connect-MsolService
Get-MsolUser | Where-Object { $_.isLicensed -eq "TRUE" } | Select-Object UserPrincipalName, DisplayName, Country, LastLogonTime | Export-Csv D:\LicensedUsers.csv