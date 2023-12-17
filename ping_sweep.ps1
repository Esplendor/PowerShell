param($p1)
if (!$p1){
        echo "Ping Sweep by Esplendor"
        echo "Example: ./ping_sweep.ps1 10.10.0"
} else {
foreach ($ip in 1..254){
try {$res = ping -n 1 "$p1.$ip" | Select-String "bytes=32"
$res.Line.split(' ')[2] -replace ":",""
} catch {}
}
}

#Try and Catch is equal 2 > /dev/null in Linux. For error catch.
