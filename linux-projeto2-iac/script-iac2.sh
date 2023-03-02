#!/bin/bash

echo "atualizando o servidor..."
apt-get update
apt-get upgrade -y
echo "fim"

echo "Instalando o apache2..."
apt-get install apache2 -y
echo "fim"

echo "Instalando o unzip..."
apt-get install unzip -y
echo"fim"
cd /tmp

echo "Baixando o arquivo main.zip do repositorio no diretorio tmp"
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
echo"fim"

echo "Descompactando o arquivo main.zip"
unzip main.zip
echo "fim"
cd linux-site-dio-main

echo "copiando os arquivos do linux-site-dio para diretorio do apache2..."
cp -R * /var/www/html/
echo "fim"
