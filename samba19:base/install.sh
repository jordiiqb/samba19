#! /bin/bash
# instal.lacio
# -------------------------------------
mkdir /var/lib/samba/public
chmod 777 /var/lib/samba/public
cp /opt/samba/* /var/lib/samba/public/.

mkdir /var/lib/samba/privat
#chmod 777 /var/lib/samba/privat

cp /opt/samba/*.md /var/lib/samba/privat/.
cp /opt/samba/smb.conf /etc/samba/smb.conf
