# Requirements
- Docker
- tinet(https://github.com/tinynetwork/tinet)
```
curl -Lo /usr/bin/tinet https://github.com/tinynetwork/tinet/releases/download/v0.0.3/tinet.linux_amd64
chmod +x /usr/bin/tinet
```

# Usage
Firstly, build Docker Images of Krill and Routinator.
In proper directoris in docker/krill or docker/routinator directory
```
sudo make docker-build
```

Otherwise, in docker directory,
```
sudo bash all_build.sh
```
<br>

After that, in proper directory,
```
tinet reconf -c spec.yaml | sudo sh -x
```
<br>

To enter a container
```
sudo docker exec -it <container name> /bin/bash
sudo docker exec -it <container name> vtysh # CLI of BGP Router
```