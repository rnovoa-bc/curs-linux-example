# Instal·lar MariaDB LTS
nano /etc/yum.repos.d/Mariadb.repo  
``` 
# MariaDB 10.11 RedHatEnterpriseLinux repository list - created 2024-04-24 06:02 UTC  
# https://mariadb.org/download/  
[mariadb]  
name = MariaDB  
# rpm.mariadb.org is a dynamic mirror if your preferred mirror goes offline. See https://mariadb.org/mirrorbits/ for de># baseurl = https://rpm.mariadb.org/10.11/rhel/$releasever/$basearch  
baseurl = https://mirrors.ircam.fr/pub/mariadb/yum/10.11/rhel/$releasever/$basearch  
# gpgkey = https://rpm.mariadb.org/RPM-GPG-KEY-MariaDB  
gpgkey = https://mirrors.ircam.fr/pub/mariadb/yum/RPM-GPG-KEY-MariaDB  
gpgcheck = 1  
```
  
dnf install MariaDB-server MariaDB-client -y  


## Creem la BBDD i posem unes quantes dades
mariadb < database/db-install.sql  
  
# Instal·lar NGINX
## Instal·lació  
nano /etc/yum.repos.d/nginx.repo  
```  
[nginx-stable]  
name=nginx stable repo  
baseurl=http://nginx.org/packages/centos/$releasever/$basearch/  
gpgcheck=1  
enabled=1  
gpgkey=https://nginx.org/keys/nginx_signing.key  
module_hotfixes=true  
  
[nginx-mainline]  
name=nginx mainline repo  
baseurl=http://nginx.org/packages/mainline/centos/$releasever/$basearch/  
gpgcheck=1  
enabled=1  
gpgkey=https://nginx.org/keys/nginx_signing.key  
module_hotfixes=true  
```
  
dnf install nginx  
  
## Configuració bàsica
nano /etc/nginx/nginx.conf  
```
server_name _;

root "/var/www/frontend";
index index.html;
location / {
    try_files $uri $uri/ /index.html;
}

location /api {
    proxy_pass http://localhost:3000/api;
    proxy_set_header Host $host;
    proxy_set_header X-Real-IP $remote_addr;
    proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
    proxy_set_header X-Forwarded-Proto $scheme;
}

```
# Configurar firewall
  
firewall-cmd --add-service=http --permanent  
firewall-cmd --reload  
  
# Deshabilitar selinux
  
set enforce 0  
nano /etc/selinux/config -> permissive  
 
# Instal·lar nodejs LTS

curl -fsSL https://rpm.nodesource.com/setup_20.x | bash -  
  
# Instal·lar pm2
  
npm install -g pm2  
  
pm2 start index.mjs  
pm2 save  
pm2 startup  

# .nanorc
```
set tabsize 4
set tabstospaces
set constantshow
```
