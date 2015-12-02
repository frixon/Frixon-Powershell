# Get-FederationInformation -DomainName “Domain Name” | New-OrganizationRelationship -Name ‘Federaion’ -Enabled $true -FreeBusyAccessEnabled $true -FreeBusyAccessLevel ‘AvailabilityOnly’ -FreeBusyAccessScope $null

Get-FederationInformation -DomainName microexcel.ae | New-OrganizationRelationship -Name ‘AE-Federaion’ -Enabled $true -FreeBusyAccessEnabled $true -FreeBusyAccessLevel ‘AvailabilityOnly’ -FreeBusyAccessScope $null

Get-FederationInformation -DomainName microexcel.com | New-OrganizationRelationship -Name ‘MicroexcelFederation’ -Enabled $true -FreeBusyAccessEnabled $true -FreeBusyAccessLevel ‘AvailabilityOnly’ -FreeBusyAccessScope $null
Get-FederationInformation -DomainName microcomsolution.onmicrosoft.com | New-OrganizationRelationship -Name ‘MicrocomFederation’ -Enabled $true -FreeBusyAccessEnabled $true -FreeBusyAccessLevel ‘AvailabilityOnly’ -FreeBusyAccessScope $null