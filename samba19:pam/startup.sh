#! /bin/bash
# startup.sh
# -------------------------------------

useradd lila
useradd roc
useradd patipla
useradd pla
echo -e "lila\nlila" | smbpasswd -a lila
echo -e "roc\nroc" | smbpasswd -a roc
echo -e "patipla\npatipla" | smbpasswd -a patipla
echo -e "pla\npla" | smbpasswd -a pla

/opt/docker/install.sh && echo "Install Ok"
/sbin/nscd && echo "nscd Ok"
/sbin/nslcd && echo "nslcd Ok"

/opt/docker/add_samba_users.sh && echo "Afegir usuaris ldap Ok"

/usr/sbin/smbd  && echo "smb Ok"
/usr/sbin/nmbd -F && echo "nmb  Ok"




