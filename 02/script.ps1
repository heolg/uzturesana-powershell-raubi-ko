# Atlasa 10 procesus ar lielāko atmiņas patēriņu, sakārto augošā secībā un noformē izvadi
Get-Process | 
    Sort-Object WorkingSet | 
    Select-Object -Last 10 | 
    Select-Object ProcessName, Id, @{Name="Atmina (MB)"; Expression={[math]::Round($_.WorkingSet / 1MB, 1)}} | 
    Format-Table -AutoSize
