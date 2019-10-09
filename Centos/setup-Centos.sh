########################################
# Отключение SeLinux
########################################

echo "
# This file controls the state of SELinux on the system.
# SELINUX= can take one of these three values:
#     enforcing - SELinux security policy is enforced.
#     permissive - SELinux prints warnings instead of enforcing.
#     disabled - No SELinux policy is loaded.
SELINUX=disabled
# SELINUXTYPE= can take one of these three values:
#     targeted - Targeted processes are protected,
#     minimum - Modification of targeted policy. Only selected processes are protected.
#     mls - Multi Level Security protection.
SELINUXTYPE=targeted" > /etc/sysconfig/selinux

########################################
# Установка Nginx
########################################

echo '[nginx]
name=nginx repo
baseurl=https://nginx.org/packages/mainline/centos/7/$basearch/
gpgcheck=0
enabled=1' > /etc/yum.repos.d/nginx.repo

echo '[unit]
name=unit repo
baseurl=https://packages.nginx.org/unit/centos/$releasever/$basearch/
gpgcheck=0
enabled=1' > /etc/yum.repos.d/unit.repo

########################################
# Подключение репозитория Epel & RemiCollect
########################################
dnf install epel-release remi-release.noarch -y

########################################
# Обновление системы до актуального состояния
########################################
yum update

########################################
# Установка необходимых пакетов
########################################
yum install wget.x86_64 htop.x86_64 ShellCheck nginx.x86_64 -y 