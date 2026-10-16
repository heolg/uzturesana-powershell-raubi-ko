
$robeza = 10

Get-CimInstance Win32_LogicalDisk |
Where-Object {$_.DriveType -eq 3} |
ForEach-Object {
    $izmers = [math]::Round($_.Size / 1GB, 2)
    $briva = [math]::Round($_.FreeSpace / 1GB, 2)

    Write-Output "Disks: $($_.DeviceID)"
    Write-Output "Kopejais izmers: $izmers GB"
    Write-Output "Briva vieta: $briva GB"

    if ($briva -lt $robeza) {
        Write-Output "BRIDINAJUMS: Maz brivas vietas!"
    }
}
