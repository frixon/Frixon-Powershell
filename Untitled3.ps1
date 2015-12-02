(Get-Mailbox) | Foreach {Get-MailboxStatistics $_.Identity | Select DisplayName, LastLogonTime} | Export-CSV $Home\Desktop\LastLogonDate.csv

Get-Mailbox | Foreach {Get-MailboxStatistics $_.Identity | Select DisplayName, LastLogonTime} | Export-CSV $Home\Desktop\LastLogonDate.csv