FROM spmallick/opencv-docker:opencv

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get install -y nano
RUN apt-get install -y openssh-server
RUN apt-get install -y net-tools
RUN apt-get install -y iputils-ping
#RUN apt-get install -y lftp

#change password
RUN echo "root:root" | chpasswd

#enable root login in SSH (i.e. set "PermitRootLogin yes")
RUN sed -i '/#/!s/\(PermitRootLogin[[:space:]]*\)\(.*\)/\1yes/' /etc/ssh/sshd_config 

RUN /root/.virtualenvs/OpenCV-3.4.4-py3/bin/pip install boto3
RUN /root/.virtualenvs/OpenCV-3.4.4-py3/bin/pip install python-telegram-bot
RUN /root/.virtualenvs/OpenCV-3.4.4-py3/bin/pip install requests
RUN /root/.virtualenvs/OpenCV-3.4.4-py3/bin/pip install clarifai

#clone of the repo with Object Detection scripts
#RUN git clone https://github.com/arturol76/ObjectDetection_opencv /home
#vedi https://medium.com/paperchain/fetching-private-github-repos-from-a-docker-container-273f25ec5a74
RUN git config --global url."https://3f36b1f94c062d922a55ab37f7f7997b1936376a:@github.com/".insteadOf "https://github.com/"
RUN git clone https://github.com/arturol76/obj_detection.git /home

RUN chmod o+x /home/run.sh 
RUN chmod o+x /home/run_nohup.sh

COPY config.ini /home/rekognition

#launch SSH server
#ENTRYPOINT "service ssh restart && /home/run.sh"
ENTRYPOINT "service ssh restart && bash"
