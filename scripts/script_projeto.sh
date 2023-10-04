#!/bin/bash

echo "Criando os diretórios..."

cd /

mkdir publico/
mkdir adm/
mkdir ven/
mkdir sec/

echo "Criado grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criado usuários..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -1 User1234) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -1 User1234) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -1 User1234) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -1 User1234) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -1 User1234) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -1 User1234) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -1 User1234) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -1 User1234) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -1 User1234) -G GRP_SEC

echo "Configurando as permissões..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Concluído!"



