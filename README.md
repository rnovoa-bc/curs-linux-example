# Instal·lar MariaDB LTS
nano /etc/yum.repos.d/Mariadb.repo
|\# MariaDB 10.11 RedHatEnterpriseLinux repository list - created 2024-04-24 06:02 UTC
|\# https://mariadb.org/download/
|[mariadb]
|name = MariaDB
|\# rpm.mariadb.org is a dynamic mirror if your preferred mirror goes offline. See https://mariadb.org/mirrorbits/ for de># baseurl = https://rpm.mariadb.org/10.11/rhel/$releasever/$basearch
|baseurl = https://mirrors.ircam.fr/pub/mariadb/yum/10.11/rhel/$releasever/$basearch
|\# gpgkey = https://rpm.mariadb.org/RPM-GPG-KEY-MariaDB
|gpgkey = https://mirrors.ircam.fr/pub/mariadb/yum/RPM-GPG-KEY-MariaDB
|gpgcheck = 1

dnf install MariaDB-server MariaDB-client -y


## Crrem la BBDD i posem unes quentes dades
mariadb < database/db-install.sql
# Instal·lar NGINX
nano /etc/yum.repos.d/nginx.repo

|[nginx-stable]
|name=nginx stable repo
|baseurl=http://nginx.org/packages/centos/$releasever/$basearch/
|gpgcheck=1
|enabled=1
|gpgkey=https://nginx.org/keys/nginx_signing.key
|module_hotfixes=true
|
|[nginx-mainline]
|name=nginx mainline repo
|baseurl=http://nginx.org/packages/mainline/centos/$releasever/$basearch/
|gpgcheck=1
|enabled=1
|gpgkey=https://nginx.org/keys/nginx_signing.key
|module_hotfixes=true

dnf install nginx

# Configurar firewall

firewall-cmd --add-service=http --permanent
firewall-cmd --reload

# Deshabilitar selinux

set enforce 0
nano /etc/selinux/config -> permissive

# Instal·lar nodejs LTS

dnf groupinstall 'Development Tools' -y  

curl -fsSL https://rpm.nodesource.com/setup_18.x | bash -


# Instal·lar pm2
npm install -g pm2

