#from https://github.com/denismakogon/opencv-slim/blob/master/Dockerfile
#FROM python:3.6.8-slim-stretch
FROM arturol76/myopencv-minimal:4.1-gtk

RUN apt-get update \
  && apt-get install -y openssh-server \
  && echo "root:root" | chpasswd \
  && sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config \
  && systemctl enable ssh

ENTRYPOINT service ssh restart && bash

