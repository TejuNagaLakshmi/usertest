<#Get-CimInstance -computername $MachineName -ClassName win32_logicaldisk -Filter "DeviceID='c:'" | select @{name="freespaceingb";e={$_.freespace /1gb -as [int]}}
#>
param(
$MachineName = 'DESKTOP-F96RN0E' 
)
Get-CimInstance -Computername $MachineName -ClassName win32_logicaldisk -Filter "DeviceID='c:'" | select @{name="freespaceingb";e={$_.freespace /1gb -as [int]}}