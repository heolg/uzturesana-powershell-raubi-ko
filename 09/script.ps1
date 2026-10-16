
Get-CimInstance Win32_Process | ForEach-Object {
    $process = $_
    $user = Invoke-CimMethod -InputObject $process -MethodName GetOwner -ErrorAction SilentlyContinue

    if ($user.User) {
        "$($process.Name) - $($user.Domain)\$($user.User)"
    }
} 2>&1 | Out-File ".\izvade.txt"
