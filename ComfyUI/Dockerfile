FROM ubuntu:latest


RUN apt update
RUN apt install python3 python3-pip git -y
RUN git clone https://github.com/initialencounter/ComfyUI
RUN mv ComfyUI app

RUN cd app;pip install -r requirements_version.txt -i https://mirror.sjtu.edu.cn/pypi/web/simple/

#复制模型到容器
# COPY models/checkpoints/majicmixFantasy_v10.safetensors /app/models/checkpoints/
# COPY models/checkpoints/AnythingV5Ink_ink.safetensors /app/models/checkpoints/

WORKDIR "/app"

CMD ["python3","main.py","--listen","0.0.0.0","--port","7860"]