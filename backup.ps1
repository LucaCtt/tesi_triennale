$Origine = "/home/utente/dati", "/home/utente/dati2"
$Destinazione = "/home/utente/backup"

$Data = Get-Date -Format "yyyy_MM_dd_HHmmss"

Compress-Archive -Path $Origine -DestinationPath "$Destinazione\$Data.zip"

