Import-Csv .\ExternalContacts.csv | %{New-MailContact -Name $_.Name -DisplayName $_.Name -ExternalEmailAddress $_.ExternalEmailAddress -FirstName $_.FirstName -LastName $_.LastName}

Import-Csv C:\Users\Joe\Desktop\microcom-mail\allmc-contacts1.csv | %{New-MailContact -Name $_.Name -DisplayName $_.DisplayName -ExternalEmailAddress $_.WindowsEmailAddress -FirstName $_.Name}