FROM amazonlinux:latest

RUN yum -y update && \ 
    yum -y makecache && \
    yum -y install yum-utils zip wget && \
    wget http://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm && \
    rpm -ivh epel-release-latest-7.noarch.rpm && \
    yum -y install https://centos7.iuscommunity.org/ius-release.rpm gcc && \
    yum -y makecache && \
    yum -y install python36u python36u-pip python36u-devel && \
    pip3.6 install --upgrade pip && \
    pip3.6 install cffi pytest