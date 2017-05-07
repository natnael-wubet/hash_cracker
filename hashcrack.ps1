[console]::Title = "HASH Cracker"

while ($true)
{
function logo {
clear
Write-Host "
 _   _ __   ____ _   _
| |_| | _\ |  __| |_| |
|  _  |   \|__  |  _  |
|_| |_|_|\_\____|_| |_| CRACKER


" -ForegroundColor Magenta
}
logo
$hlist = Read-Host "Hash list"
$wordlist = Read-Host "word list"
logo
"Cracking started at $(Get-Date)"
$stop = [System.Diagnostics.Stopwatch]::new()
$stop.Start()

foreach ($tmp in cat $wordlist)
{
    $str = New-Object System.Text.StringBuilder
    foreach ($i in [System.Security.Cryptography.HashAlgorithm]::Create("MD5").ComputeHash([System.Text.Encoding]::UTF8.GetBytes($tmp)))
    {
        [void]$str.Append($i.tostring("x2"))
    }
    if ($str.ToString())
    {
        $cat = cat $hlist |Select-String $str.ToString()
        if ($cat)
        {
            foreach ($catt in $cat)
            {
                if ([string]$catt -eq ($str.ToString()))
                {
                    Write-Host "found: $catt" -NoNewline -ForegroundColor Yellow;
                    Write-Host ":$tmp" -ForegroundColor Green -NoNewline;
                    Write-Host " Alghorithm: MD5" -ForegroundColor White;
                }
            }
        }
    }
    $str = New-Object System.Text.StringBuilder
    foreach ($i in [System.Security.Cryptography.HashAlgorithm]::Create("SHA1").ComputeHash([System.Text.Encoding]::UTF8.GetBytes($tmp)))
    {
        [void]$str.Append($i.tostring("x2"))
    }
    if ($str.ToString())
    {
        $cat = cat $hlist |Select-String $str.ToString()
        if ($cat)
        {
            foreach ($catt in $cat)
            {
                if ([string]$catt -eq ($str.ToString()))
                {
                    Write-Host "found: $catt" -NoNewline -ForegroundColor Yellow;
                    Write-Host ":$tmp" -ForegroundColor Green -NoNewline;
                    Write-Host " Alghorithm: SHA1" -ForegroundColor White;
                }
            }
        }
    }
    $str = New-Object System.Text.StringBuilder
    foreach ($i in [System.Security.Cryptography.HashAlgorithm]::Create("SHA256").ComputeHash([System.Text.Encoding]::UTF8.GetBytes($tmp)))
    {
        [void]$str.Append($i.tostring("x2"))
    }
    if ($str.ToString())
    {
        $cat = cat $hlist |Select-String $str.ToString()
        if ($cat)
        {
            foreach ($catt in $cat)
            {
                if ([string]$catt -eq ($str.ToString()))
                {
                    Write-Host "found: $catt" -NoNewline -ForegroundColor Yellow;
                    Write-Host ":$tmp" -ForegroundColor Green -NoNewline;
                    Write-Host " Alghorithm: SHA256" -ForegroundColor White;
                }
            }
        }
    }
    $str = New-Object System.Text.StringBuilder
    foreach ($i in [System.Security.Cryptography.HashAlgorithm]::Create("SHA384").ComputeHash([System.Text.Encoding]::UTF8.GetBytes($tmp)))
    {
        [void]$str.Append($i.tostring("x2"))
    }
    if ($str.ToString())
    {
        $cat = cat $hlist |Select-String $str.ToString()
        if ($cat)
        {
            foreach ($catt in $cat)
            {
                if ([string]$catt -eq ($str.ToString()))
                {
                    Write-Host "found: $catt" -NoNewline -ForegroundColor Yellow;
                    Write-Host ":$tmp" -ForegroundColor Green -NoNewline;
                    Write-Host " Alghorithm: SHA384" -ForegroundColor White;
                }
            }
        }
    }
    $str = New-Object System.Text.StringBuilder
    foreach ($i in [System.Security.Cryptography.HashAlgorithm]::Create("SHA512").ComputeHash([System.Text.Encoding]::UTF8.GetBytes($tmp)))
    {
        [void]$str.Append($i.tostring("x2"))
    }
    if ($str.ToString())
    {
        $cat = cat $hlist |Select-String $str.ToString()
        if ($cat)
        {
            foreach ($catt in $cat)
            {
                if ([string]$catt -eq ($str.ToString()))
                {
                    Write-Host "found: $catt" -NoNewline -ForegroundColor Yellow;
                    Write-Host ":$tmp" -ForegroundColor Green -NoNewline;
                    Write-Host " Alghorithm: SHA512" -ForegroundColor White;
                }
            }
        }
    }
}
write-host "Cracking done at $(Get-Date)`n`nTime Elapsed: $($stop.Elapsed.Seconds.ToString()).$($stop.Elapsed.Milliseconds.ToString();$stop.Stop()) seconds" -ForegroundColor Cyan
pause
}
