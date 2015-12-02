$AdminUsername = "joe.frixon@microexcel.com"

$AdminPassword = "frijoe@1978"

$SecurePassword = ConvertTo-SecureString $AdminPassword -AsPlainText -Force

$cred = New-Object -TypeName System.Management.Automation.PSCredential -argumentlist $AdminUsername,$SecurePassword

$Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri ps.outlook.com/powershell&quot; -Credential $cred -Authentication Basic -AllowRedirection

Import-PSSession $Session

Import-Module MSOnline

Connect-MSOLService -Credential $cred