# Requirements
- Docker
- tinet(https://github.com/tinynetwork/tinet)
```
curl -Lo /usr/bin/tinet https://github.com/tinynetwork/tinet/releases/download/v0.0.3/tinet.linux_amd64
chmod +x /usr/bin/tinet
```

# Usage
In proper directory
```
sudo bash docker_build.sh
tinet reconf -c spec.yaml | sudo sh -x
```