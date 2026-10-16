# 1. Mainīgie skaitīšanai
$x = 0
$y = 0

# 2. Cikls un statusa pārbaude
foreach ($b in Get-Service) {
    if ($b.Status -eq "Running") { $x++ }
    if ($b.Status -eq "Stopped") { $y++ }
}

# 3. Rezultātu izvade (Darbojas, Apturēti, Summa)
$x
$y
($x + $y)
