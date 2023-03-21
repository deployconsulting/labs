TFVERSION=1.4.2
TFARCH=amd64
TFOS=linux
curl -O "https://releases.hashicorp.com/terraform/${TFVERSION}/terraform_${TFVERSION}_${TFOS}_${TFARCH}.zip"
unzip terraform_${TFVERSION}_${TFOS}_${TFARCH}.zip