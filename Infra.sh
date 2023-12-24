#!/bin/bash

echo "Criando os diretorios"
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando os grupos"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando os usuarios e adicionando aos grupos"

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt open) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt open) -G GRP_ADM
useradd debora -m -s /bin/bash -p $(openssl passwd -crypt open) -G GRP_VEN
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt open) -G GRP_ADM
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt open) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt open) -G GRP_SEC
useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt open) -G GRP_SEC
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt open) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt open) -G GRP_VEN

echo "Definindo as permissões"
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "fim"






