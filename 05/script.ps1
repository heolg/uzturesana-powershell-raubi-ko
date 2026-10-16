# 1. Izmanto Get-Member, lai apskatītu Get-Date objekta pieejamās metodes
# Šī komanda parāda, ka eksistē metode ".AddHours" laika atņemšanai
Get-Date | Get-Member -MemberType Method

# 2. Nosaka laika robežu (mīnus 48 stundas), izmantojot atrasto metodi
$laikaRobeza = (Get-Date).AddHours(-48)

# 3. Atlasa kļūdas sistēmas žurnālā pēdējo 48 stundu laikā
$kludas = Get-EventLog -LogName System -EntryType Error -After $laikaRobeza -ErrorAction SilentlyContinue

# 4. Saskaita kopējo kļūdu skaitu
$kopejaisSkaits = $kludas.Count
if ($null -eq $kopejaisSkaits) { $kopejaisSkaits = 0 }

# 5. Atrod biežāko kļūdu avotu un cik reižu tas parādās
if ($kopejaisSkaits -gt 0) {
    $topAvots = $kludas | Group-Object -Property Source | Sort-Object -Property Count -Descending | Select-Object -First 1
    $avotaNosaukums = $topAvots.Name
    $avotaSkaits = $topAvots.Count
} else {
    $avotaNosaukums = "Nav kļūdu"
    $avotaSkaits = 0
}

# 6. Izvada gala rezultātus ekrānā
"Kopējais kļūdu skaits pēdējās 48 stundās: $kopejaisSkaits"
"Visbiežākais kļūdu avots: $avotaNosaukums"
"Šis avots parādās: $avotaSkaits reizes"
