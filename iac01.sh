#!/bin/bash

echo "Criando Diretórios, grupos, usuários do sistema e permissões..."

mkdir /publico

mkdir /adm

groupadd GRP_ADM

useradd Carlos -c "Usuário convidado" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd Maria -c "Usuário convidado" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd João -c "Usuário convidado" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM

mkdir /ven

groupadd GRP_VEN

useradd Debora -c "Usuário convidado" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd Sebastiana -c "Usuário convidado" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd Roberto -c "Usuário convidado" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN

mkdir /sec

groupadd GRP_SEC

useradd Josefina -c "Usuário convidado" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd Amanda -c "Usuário convidado" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd Rogério -c "Usuário convidado" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC


echo "Permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Finalizado"
