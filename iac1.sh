#!/bin/bash

echo "criando diretorios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "criando grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "criando usuario"

useradd jorge -m -s /bin/bash -p $(openssl passwd -crypt senha) -G GRP_ADM
useradd Marco -m -s /bin/bash -p $(openssl passwd -crypt senha) -G GRP_ADM
useradd Cleide -m -s /bin/bash -p $(openssl passwd -crypt senha) -G GRP_ADM

useradd naila -m -s /bin/bash -p $(openssl passwd -crypt senha) -G GRP_VEN
useradd ronaldo -m -s /bin/bash -p $(openssl passwd -crypt senha) -G GRP_VEN
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt senha) -G GRP_VEN

useradd lucas -m -s /bin/bash -p $(openssl passwd -crypt senha) -G GRP_SEC
useradd mateus -m -s /bin/bash -p $(openssl passwd -crypt senha) -G GRP_SEC
useradd roger  -m -s /bin/bash -p $(openssl passwd -crypt senha) -G GRP_SEC


echo "permisoes diretorio"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "fim"
