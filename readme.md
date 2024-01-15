# nvidia-containner-tookit
```shell
bash -c "$(curl -L https://github.com/initialencounter/mydocker/raw/main/utils/nvidia-container.sh)"
```


```shell
vi /etc/docker/daemon.json
systemctl daemon-reload

systemctl restart docker
```
```json
"insecure-registries": [
    "hub.docker.jiankunking.io:5000"
]
```