curl -fsSL https://get.docker.com/ | sh
sleep 30
sudo systemctl start docker
sleep 30
sudo systemctl enable docker
sleep 30
sudo docker pull portainer/portainer:latest
sleep 30
sudo docker volume create --name portainer_data1
sleep 30
sudo docker run -d -p 9000:9000 -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data1:/data portainer/portainer
