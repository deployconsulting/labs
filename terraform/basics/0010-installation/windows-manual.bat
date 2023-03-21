set TFVERSION=1.4.2
set TFARCH=amd64
set TFOS=windows
curl -O "https://releases.hashicorp.com/terraform/%TFVERSION%/terraform_%TFVERSION%_%TFOS%_%TFARCH%.zip"
tar -xf terraform_%TFVERSION%_%TFOS%_%TFARCH%.zip