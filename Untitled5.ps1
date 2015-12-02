Import-Csv C:\Users\Joe\Desktop\microcom-mail\MicroexcelExportData.csv |
    foreach-object{if (Get-MailContact -anr $_.name) {write-host $_.name 'is a duplicate entry!!!'}		
    else {New-MailContact -Name $_.Name -DisplayName $_.Name -ExternalEmailAddress $_.ExternalEmailAddress -FirstName $_.FirstName -LastName $_.LastName				}
    }


    Import-Csv C:\Users\Joe\Desktop\microcom-mail\MicroexcelExportData.csv | foreach-object {New-MailContact -Name $_.Name -DisplayName $_.Name -ExternalEmailAddress $_.ExternalEmailAddress -FirstName $_.FirstName -LastName $_.LastName				}
    

    Import-Csv C:\Users\Joe\Desktop\microcom-mail\MicroexcelExportData.csv | %{New-MailContact -Name $_.Name -DisplayName $_.Name -ExternalEmailAddress $_.ExternalEmailAddress -FirstName $_.FirstName -LastName $_.LastName}