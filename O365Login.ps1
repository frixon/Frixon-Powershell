$LiveCred = Get-Credential
$Session7 = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://ps.outlook.com/powershell/ -Credential $LiveCred -Authentication Basic -AllowRedirection
Import-PSSession $Session7



$UserCredential = Get-Credential
1..100
$Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://outlook.office365.com/powershell-liveid/ -Credential $UserCredential -Authentication Basic -AllowRedirection
1..300
Import-PSSession $Session
Connect-MSOLService -Credential $UserCredential

Remove-PSSession $Session 

Start-HistoricalSearch -EndDate <DateTime> -ReportTitle <String> -ReportType <MessageTrace | MessageTraceDetail | DLP | TransportRule | SPAM | Malware> -StartDate <DateTime> [-DeliveryStatus <String>] [-Direction <All | Sent | Received>] [-DLPPolicy <MultiValuedProperty>] [-Locale <CultureInfo>] [-MessageID <MultiValuedProperty>] [-NotifyAddress <MultiValuedProperty>] [-Organization <OrganizationIdParameter>] [-OriginalClientIP <String>] [-RecipientAddress <MultiValuedProperty>] [-SenderAddress <MultiValuedProperty>] [-TransportRule <MultiValuedProperty>]
Start-HistoricalSearch -StartDate 03/23/2015 -EndDate 03/27/2015 -ReportType MessageTrace -ReportTitle Microexcel -OriginalClientIP 115.118.164.151 -NotifyAddress joe.frixon@microexcel.com

20150325132455.30455.qmail@f5mail-224-166.rediffmail.com

Start-HistoricalSearch -StartDate 03/23/2015 -EndDate 03/27/2015 -ReportType MessageTrace -ReportTitle Microexcel -OriginalClientIP 115.118.164.151 -MessageID 20150325132455.30455.qmail@f5mail-224-166.rediffmail.com -NotifyAddress joe.frixon@microexcel.com

Start-HistoricalSearch -StartDate 03/23/2015 -EndDate 03/27/2015 -ReportType MessageTrace -ReportTitle Microexcel2 -MessageID 20150325132455.30455.qmail@f5mail-224-166.rediffmail.com -NotifyAddress joe.frixon@microexcel.com

Start-HistoricalSearch -StartDate 03/10/2015 -EndDate 06/10/2015 -ReportType MessageTrace -ReportTitle Micro1 -SenderAddress surendra.reddy@microexcel.com -NotifyAddress joe.frixon@microexcel.com
