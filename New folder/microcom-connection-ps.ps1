$UserCredential = Get-Credential
Start-Sleep -Seconds 2
$Session2 = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://mail.microcomsolution.com/powershell/ -Credential $UserCredential -Authentication Basic -AllowRedirection
Start-Sleep -Seconds 5
Import-PSSession $Session2
Remove-PSSession $Session2

Send-MailMessage –From joe.frixon@microcomsolution.com –To joe.frixon@microexcel.com –Subject “Test ps Email” –Body “Test E-mail ps (body)” -SmtpServer mail.microcomsolution.com


Set-ClientAccessServer -Identity MSPL-HYD-EXC1 -AutoDiscoverServiceInternalUri https://mail.microcomsolution.com/Autodiscover/Autodiscover.xml

$ALLUsers = Get-Mailbox 

New-AutodiscoverVirtualDirectory -WebsiteName "Default Web Site" -WindowsAuthentication $true -BasicAuthentication $true

Test-ServiceHealth | FT Role,RequiredServicesRunning -AutoSize 
Set-TransportConfig -MaxSendSize 30MB  -MaxReceiveSize 30MB #on 23rd Oct 2015 by Shelly Zhou