FROM spmallick/opencv-docker:opencv

RUN apt-get update \
    && apt-get -y upgrade \
    && apt-get install -y nano \
    && apt-get install -y openssh-server \
    && apt-get install -y net-tools \
    && apt-get install -y iputils-ping \
    && echo "root:root" | chpasswd \
    && sed -i '/#/!s/\(PermitRootLogin[[:space:]]*\)\(.*\)/\1yes/' /etc/ssh/sshd_config 

#launch SSH server
#ENTRYPOINT "service ssh restart && /home/run.sh"
ENTRYPOINT "/bin/bash"
