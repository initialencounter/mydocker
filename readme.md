# docker

## ComfyUI

[Docker Image](https://hub.docker.com/repository/docker/initialencounter/comfyui/general)

## cuda12.1

[Docker Image](https://hub.docker.com/repository/docker/initialencounter/cuda/general)

- Ubuntu22.04
- Ubuntu20.04
- CentOS7

# nvidia-containner-tookit
```shell
bash -c "$(curl -L https://github.com/initialencounter/mydocker/raw/main/utils/nvidia-container.sh)"
```

## switch inmsecure registry

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