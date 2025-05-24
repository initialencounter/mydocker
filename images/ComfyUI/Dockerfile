FROM ubuntu:latest

# set label
LABEL maintainer="galaxy"
LABEL description="ComfyUI"
LABEL custom_message="latest-lite, have not models"

RUN apt-get update && \
    apt-get install -y python3 \
    python3-pip \
    git && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/initialencounter/ComfyUI && mv ComfyUI app

RUN cd app && \
    pip install -r requirements_version.txt -i https://mirror.sjtu.edu.cn/pypi/web/simple/ && \
    pip cache purge

#复制模型到容器
# COPY /checkpoints/majicmixFantasy_v10.safetensors /app/models/checkpoints/
# COPY /checkpoints/AnythingV5Ink_ink.safetensors /app/models/checkpoints/
# COPY /Anything-v3.0-For-Tachie-ema-fp16.safetensors /app/models/checkpoints/

WORKDIR "/app"

CMD ["python3","main.py","--listen","0.0.0.0","--port","7860"]