param($ip)
if(!$ip){
   echo "uso: .\script.ps1 host"
}else{
$topports = 21,22,25,80,443,3306,8080
try {foreach ($p in $topports){
    if (Test-NetConnection $ip -Port $p -WarningAction SilentlyContinue -InformationLevel Quiet) {
        echo "OPEN:  $($p)"
    }}else {
        echo "CLOSE: $($p)"
    }

} catch{}
}