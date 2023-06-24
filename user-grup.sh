#!/bin/bash

echo " Criando os diretorios!!"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo " ciado os diretorios"



echo "criando os grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo " grupos criados"

echo "criando os usuarios e ja colocando nos grupos"
echo "grupos de adm"
useradd carlos -c "Carlos silva" -m -s /bin/bash  -p $(openssl passwd senha123) -G GRP_ADM
useradd maria -c "Maria silva" -m -s /bin/bash  -p $(openssl passwd senha123) -G GRP_ADM
useradd joao -c "Joao silva" -m -s /bin/bash  -p $(openssl passwd senha123) -G GRP_ADM

echo "grupos de vendas"
useradd debora -c "Debora silva" -m -s /bin/bash  -p $(openssl passwd senha123) -G GRP_VEN
useradd sebastiao -c "Sebastiao silva" -m -s /bin/bash  -p $(openssl passwd senha123) -G GRP_VEN
useradd roberto -c "Roberto silva" -m -s /bin/bash  -p $(openssl passwd senha123) -G GRP_VEN

echo "grupos de sec"
useradd josefina -c "Josefina silva" -m -s /bin/bash  -p $(openssl passwd senha123) -G GRP_SEC
useradd amanda -c "Amanda silva" -m -s /bin/bash  -p $(openssl passwd senha123) -G GRP_SEC
useradd rogerio -c "Rogerio silva" -m -s /bin/bash  -p $(openssl passwd senha123) -G GRP_SEC

echo "grupos criados"



echo "Permissões"


chown root:GRP_ADM /adm/
echo "permisão de adm criada"
chmod 770 /adm/

chown root:GRP_VEN /ven/
echo "permisão de ven criada"
chmod 770 /ven/

chown root:GRP_SEC /sec/
echo "permisão de sec criada"
chmod 770 /sec/

chmod 777 /publico

echo "permisão de publico criada"
















