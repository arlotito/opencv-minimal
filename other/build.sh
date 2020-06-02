#example:
#./build.sh 192.168.2.96
#./build.sh docker.lan
docker -H $1 build \
    -t arturol76/opencv-minimal:ssh \
    .