cls
write-host -ForegroundColor Blue "                            PS SSH"
write-host  -ForegroundColor DarkBlue  "______________________________________________________________"
$timer = new-timespan -Hours 1
$clock = [diagnostics.stopwatch]::StartNew()
while ($clock.elapsed -lt $timer){
$ErrorActionPreference='stop'
$command=ps ssh
$h=Get-Date -Format HH
$m=Get-Date -Format mm
$s=Get-Date -Format ss
write-host -ForegroundColor DarkBlue "                                               TIME: "$h":"$m":"$s
$command
write-host -ForegroundColor DarkBlue "______________________________________________________________"
start-sleep -seconds 3
}