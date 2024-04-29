# Instal·lar MariaDB LTS
(https://mariadb.com/kb/en/yum/)

## Crrem la BBDD i posem unes quentes dades
mariadb < database/db-install.sql
# Instal·lar NGINX

# Configurar firewall

firewall-cmd --add-service=http --permanent
firewall-cmd --reload

# Deshabilitar selinux

# Instal·lar nodejs LTS

dnf groupinstall 'Development Tools' -y
curl -fsSL https://rpm.nodesource.com/setup_18.x | bash -


# Instal·lar pm2

