FROM centos:centos7.1.1503

MAINTAINER Anderson Rodriguez "andiirc@gmail.com"

RUN yum -y install --setopt=tsflags=nodocs epel-release && \ 
    yum -y install --setopt=tsflags=nodocs mariadb-server bind-utils pwgen psmisc hostname && \ 
    yum -y erase vim-minimal && \
    yum -y update && yum clean all

VOLUME /var/lib/mysql

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 3306
CMD ["mysqld_safe"]