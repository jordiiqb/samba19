#! /bin/bash
# instal.lacio
# -------------------------------------
mkdir /var/lib/samba/public
chmod 777 /var/lib/samba/public
cp /opt/docker/* /var/lib/samba/public/.

mkdir /var/lib/samba/privat
#chmod 777 /var/lib/samba/privat

cp /opt/docker/*.md /var/lib/samba/privat/.
cp /opt/docker/smb.conf /etc/samba/smb.conf

chmod 777 /opt/docker/auth.sh
chmod 777 /opt/docker/add_samba_users.sh
bash auth.sh && echo "authconfig Ok"
