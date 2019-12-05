# Version: 0.0.1
# @edt M06 2019-2020
# samba
# -------------------------------------
FROM fedora:27
LABEL author="Jordi Quirós Berbeñ"
LABEL description="SAMBA server 2019-2020"
RUN dnf -y install procps samba samba-client
RUN mkdir /opt/samba
COPY * /opt/samba/
RUN chmod +x /opt/samba/install.sh /opt/samba/startup.sh
WORKDIR /opt/samba
CMD ["/opt/samba/startup.sh"]

