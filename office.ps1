$UserCredential = Get-Credential
$Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri http://<FQDN of Exchange 2013 Client Access server>/PowerShell/ -Authentication Kerberos -Credential $UserCredential

$Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://mail.microcomsolution.in/PowerShell/ -Authentication Kerberos -Credential $UserCredential

Import-PSSession $Session