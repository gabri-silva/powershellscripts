param($p1)

if (!$p1){
    echo "Desec Sec"
    echo "Uso: .\script.ps1 [rede]"
} else {
foreach ($ip in 1..254){
ping -n 1 "$p1.$ip" | Select-String "bytes=32"
}}