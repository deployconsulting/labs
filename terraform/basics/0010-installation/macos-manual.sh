TFVERSION=1.4.2
TFARCH=arm64
TFOS=darwin
curl -O "https://releases.hashicorp.com/terraform/${TFVERSION}/terraform_${TFVERSION}_${TFOS}_${TFARCH}.zip"
unzip terraform_${TFVERSION}_${TFOS}_${TFARCH}.zip