
$draiveri = Get-CimInstance Win32_PnPSignedDriver |
    Where-Object { $_.DriverProviderName -ne "Microsoft" } |
    Select-Object DeviceName, DriverProviderName

$draiveri | Export-Csv ".\draiveri.csv" -NoTypeInformation -Encoding UTF8

"Rindu skaits CSV failā: $($draiveri.Count)" | Out-File ".\izvade.txt"
