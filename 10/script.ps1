
$procesi = (Get-Process).Count

$servisi = Get-Service
$aktivi = ($servisi | Where-Object {$_.Status -eq "Running"}).Count
$aptureti = ($servisi | Where-Object {$_.Status -eq "Stopped"}).Count

$laiks = (Get-Date).AddHours(-48)
$kludas = (Get-EventLog -LogName System -EntryType Error -After $laiks -ErrorAction SilentlyContinue).Count

$diski = Get-CimInstance Win32_LogicalDisk -Filter "DriveType=3"

"Procesu skaits: $procesi"
"Aktivo servisu skaits: $aktivi"
"Aptureto servisu skaits: $aptureti"
"Kludu skaits pedejas 48 stundas: $kludas"
"Briva vieta diskos:"

foreach ($d in $diski) {
    "$($d.DeviceID): $([math]::Round($d.FreeSpace / 1GB, 2)) GB"
}

"Skaitli var atskirties, jo procesi, servisi, zurnala ieraksti un diska briva vieta laika gaita mainas."
