$IpPubblico=(Invoke-WebRequest -uri "ipinfo.io/ip").Content
$IpPrivato=(Get-NetIPAddress -AddressFamily IPV4).IpAddress
$IpGateway=(Get-NetIPConfiguration | Foreach IPv4DefaultGateway)
$Dns=(Get-DnsClientServerAddress | Select-Object –ExpandProperty ServerAddresses)

Write-Host "IP pubblico:   ${IpPubblico}"
Write-Host "IP privato:    ${IpPrivato}"
Write-Host "IP gateway:    ${IpGateway}"
Write-Host "DNS:           ${Dns}"
