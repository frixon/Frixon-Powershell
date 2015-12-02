New-MailContact -Name "Murali Gutha" -ExternalEmailAddress Murali.Gutha@microcomsolution.com                                       
  16 New-MailContact -Name "Kishore Mattupalli" -ExternalEmailAddress Kishore.Mattupalli@microcomsolution.com                           
  17 New-MailContact -Name "Kishore Kacharlai" -ExternalEmailAddress kishore.kacharla@microcomsolution.com                              
  18 Get-DistributionGroup                                                                                                              
  19 Add-DistributionGroupMember -Identity INDIA SAP TEAM                                                                               
  20 Add-DistributionGroupMember -Identity "INDIA SAP TEAM" -Member kishore.kacharla@microcomsolution.com -BypassSecurityGroupManager...
  21 Add-DistributionGroupMember -Identity "INDIA SAP TEAM" -Member Murali.Gutha@microcomsolution.com -BypassSecurityGroupManagerCheck  
  22 Add-DistributionGroupMember -Identity "INDIA SAP TEAM" -Member Kishore.Mattupalli@microcomsolution.com -BypassSecurityGroupManag...
  23 get-DistributionGroupMember -Identity "INDIA SAP TEAM"              