
# -P, --publish-all                    Publish all exposed ports to random ports
# -d, --detach                         Run container in background and print container ID
# -i, --interactive                    Keep STDIN open even if not attached
# -t, --tty                            Allocate a pseudo-TTY
docker run -d -P --name rocky_container_web_01 ansible_practice_rockylinux
docker run -d -P --name rocky_container_web_02 ansible_practice_rockylinux

docker run -d -P --name rocky_container_mg_01 ansible_practice_rockylinux
docker run -d -P --name rocky_container_mg_02 ansible_practice_rockylinux

docker run -d -P --name rocky_container_api_01 ansible_practice_rockylinux
docker run -d -P --name rocky_container_api_02 ansible_practice_rockylinux

# The -P flag maps the container's SSH port to a random port on your host. To find out which port it was mapped to, use the following command:
#docker port rocky_container_web_01 22
#docker port rocky_container_web_01 80

#docker port rocky_container_web_02 22
#docker port rocky_container_web_02 80

