sudo docker pull portainer/portainer:latest
sudo docker volume create --name portainer_data1
sudo docker run -d -p 9000:9000 -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data1:/data portainer/portainer
