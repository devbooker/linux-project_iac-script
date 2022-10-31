#!/bin/bash

echo "Creating groups directories.."

mkdir /public
mkdir /adm
mkdir /ven
mkdir /sec

echo "Creating users group.."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Creating users.."

useradd cris -c "Cris Dellamore" -s /bin/bash -m -p $(openssl passwd n123) -G GRP_ADM
passwd cris -e
useradd maria -c "Maria Dellamore" -s /bin/bash -m -p $(openssl passwd n123) -G GRP_ADM
passwd maria -e
useradd kobe -c "Kobe Dellamore" -s /bin/bash -m -p $(openssl passwd n123) -G GRP_ADM
passwd kobe -e

useradd diana -c "Diana Dellamore" -s /bin/bash -m -p $(openssl passwd n123) -G GRP_VEN
passwd diana -e
useradd scarlett -c "Scarlett Dellamore" -s /bin/bash -m -p $(openssl passwd n123) -G GRP_VEN
passwd scarlett -e
useradd ronaldo -c "Ronaldo Dellamore" -s /bin/bash -m -p $(openssl passwd n123) -G GRP_VEN
passwd -e

useradd jordana -c "Jordana Dellamore" -s /bin/bash -m -p $(openssl passwd n123) -G GRP_SEC
passwd jordana -e
useradd amanda -c "Amanda Dellamore" -s /bin/bash -m -p $(openssl passwd n123) -G GRP_SEC
passwd amanda -e
useradd madrid -c "Madrid Dellamore" -s /bin/bash -m -p $(openssl passwd n123) -G GRP_SEC
passwd madrid -e

echo "Specifying permissions.."

echo "Changing owner.."

chown root:GRP_ADM /adm/
chown root:GRP_VEN /ven/
chown root:GRP_SEC /sec/

echo "Changing acess.."

chmod 770 /adm/
chmod 770 /ven/
chmod 770 /sec/
chmod 777 /public/

echo "Finished!"
