$UserCredential = Get-Credential
Start-Sleep -Seconds 2
$Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://10.10.10.80/powershell/ -Credential $UserCredential -Authentication Basic -AllowRedirection
Start-Sleep -Seconds 5
Import-PSSession $Session
Remove-PSSession $Session