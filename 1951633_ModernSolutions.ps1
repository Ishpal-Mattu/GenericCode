Function KillThatProcess ([string] $pName)
{
    $numProcess = Get-Process $pName
    Write-Host "There are" $numProcess.Count "processes with the name $pName, proceed? Y/N"
    $proceed = Read-Host
    if($proceed -eq "Y" -Or $proceed -eq "y")
    {
        $numProcess |kill
    }
    else
    {
        Write-Host "The process name $pName will not be closed ..." -BackgroundColor White -ForegroundColor Red
    }
}


function Bamboozle ($path = (Get-Location))
{
    $randomChar = (65..90) + (97..122) | Get-Random -Count 1 | foreach {[char]$_}
    Write-Host -NoNewline "Hey there! I hope u like the gift I got u :" -ForegroundColor DarkYellow
    Write-Host "letter $randomChar" -ForegroundColor Yellow
    Write-Host "WELCOME TO ADULTHOOD!! - It's Corona Time!!'"  -ForegroundColor Red
    
    Get-ChildItem -Path $path -Recurse -Filter *$randomChar* -File| Remove-Item -WhatIf
}
pause
