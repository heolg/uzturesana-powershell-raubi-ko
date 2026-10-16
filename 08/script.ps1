
$laiks1 = Measure-Command {
    $s1 = Get-Service -Name Spooler
}

$laiks2 = Measure-Command {
    $s2 = Get-CimInstance Win32_Service -Filter "Name='Spooler'"
}

$rezultats = @(
    "1. veids: $($s1.Name), $($s1.Status)"
    "Laiks: $([math]::Round($laiks1.TotalMilliseconds, 3)) ms"
    ""
    "2. veids: $($s2.Name), $($s2.State)"
    "Laiks: $([math]::Round($laiks2.TotalMilliseconds, 3)) ms"
    ""
)

if ($laiks1 -lt $laiks2) {
    $rezultats += "Atrāks bija 1. veids."
} else {
    $rezultats += "Atrāks bija 2. veids."
}

$rezultats += "Laika starpības nozīme ir neliela, ja abi veidi darbojas ļoti ātri."

$rezultats | Set-Content izvade.txt
$rezultats
