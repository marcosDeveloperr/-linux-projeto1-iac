#!/bin/bash

echo "criando diretórios.."
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec
echo "Fim ..."

echo "criando grupos de usuários..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
echo "Fim ..."

echo "criando usuários..."
echo "-G GRP_ADM adicionando os usuários ao grupo"
useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM 
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
echo "Fim ..."


echo "Especificando permissões dos diretórios...."
echo "dono do diretorio, tendo a permissão total."
chown  root:GRP_ADM  /adm  
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec


echo "Permissão total ao root, dono do diretorio e nenhuma ao outros usuarios...."
chmod 770 /adm   
chmod 770 /ven
chmod 770 /sec
echo "Fim ..."

echo "Pasta publica permissão total a todos"
chmod 777 /publico 
echo "Fim ..."
