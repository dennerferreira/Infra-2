#!/bin/bash


echo " --- Atualizando o servidor ---"
echo ""

apt-get update
apt-get upgrade -y

echo "Baixando e copiando os arquivos da aplica��o..."

apt-get install apache2 -y
apt-get install unzip -y

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html

