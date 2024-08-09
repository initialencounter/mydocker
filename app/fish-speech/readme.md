# 1. 租 GPU

# 2. 安装 docker

```shell
bash -c "$(curl -L https://github.com/initialencounter/mydocker/raw/main/utils/nvidia-container.sh)"
```

## start

```shell
docker run -it -p 3389:7860 --gpus 0 initialencounter/fish-speech
```

# start service

```shell
cd /app/fish-speech
HF_ENDPOINT=https://hf-mirror.com python -m zibai tools.api_server:app --listen 0.0.0.0:7860
```

put model

```shell
curl -X 'PUT' \
  'http://localhost:3389/v1/models/default' \
  -H 'accept: application/json' \
  -H 'Content-Type: application/json' \
  -d '{
  "device": "cuda",
  "llama": {
    "config_name": "text2semantic_finetune",
    "checkpoint_path": "../text2semantic-400m-v0.2-4k.pth",
    "precision": "bfloat16",
    "tokenizer": "fishaudio/speech-lm-v1",
    "compile": true
  },
  "vqgan": {
    "config_name": "vqgan_pretrain",
    "checkpoint_path": "../vqgan-v1.pth"
  }
}'
```
