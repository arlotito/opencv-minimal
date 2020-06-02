docker_name=opencv-ssh
docker_image=arturol76/opencv-minimal:ssh
docker_host=$1

# create your container
echo creating the container...
docker -H $1 run \
    -d \
    -p 23:22 \
    --name $docker_name \
    $docker_image
    