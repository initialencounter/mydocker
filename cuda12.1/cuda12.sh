echo "deb https://mirrors.aliyun.com/ubuntu/ jammy main restricted universe multiverse
deb-src https://mirrors.aliyun.com/ubuntu/ jammy main restricted universe multiverse

deb https://mirrors.aliyun.com/ubuntu/ jammy-security main restricted universe multiverse
deb-src https://mirrors.aliyun.com/ubuntu/ jammy-security main restricted universe multiverse

deb https://mirrors.aliyun.com/ubuntu/ jammy-updates main restricted universe multiverse
deb-src https://mirrors.aliyun.com/ubuntu/ jammy-updates main restricted universe multiverse

deb https://mirrors.aliyun.com/ubuntu/ jammy-backports main restricted universe multiverse
deb-src https://mirrors.aliyun.com/ubuntu/ jammy-backports main restricted universe multiverse" > /etc/apt/sources.list

apt update

# xfce+tightvnvsercer
apt install xfce4 xfce4-terminal xvfb tightvncserver vim wget git sudo default-jdk openssh-server -y && apt-get clean
## start: tightvncserver -geometry 1280x720 :1971
wget https://mirrors.tuna.tsinghua.edu.cn/anaconda/miniconda/Miniconda3-py310_23.11.0-2-Linux-x86_64.sh
bash Miniconda3-py310_23.11.0-2-Linux-x86_64.sh -p /opt/miniconda3


source ~/.bashrc

# PyTorch
wget https://mirror.sjtu.edu.cn/pytorch-wheels/cu121/torch-2.1.2%2Bcu121-cp310-cp310-linux_x86_64.whl
pip install torch-2.1.2+cu121-cp310-cp310-linux_x86_64.whl torchaudio torchvision -f https://mirror.sjtu.edu.cn/pytorch-wheels/torch_stable.html
pip install pandas transformers tensorboard jupyter -i https://mirror.sjtu.edu.cn/pypi/web/simple/

## Pycharm
wget https://download-cdn.jetbrains.com/python/pycharm-community-2023.3.2.tar.gz
tar -xvf pycharm-community-2023.3.2.tar.gz
mv pycharm-community-2023.3.2 /opt/pycharm

rm torch-2.1.2+cu121-cp310-cp310-linux_x86_64.whl Miniconda3-py310_23.11.0-2-Linux-x86_64.sh pycharm-community-2023.3.2.tar.gz

git clone https://mirror.ghproxy.com/https://github.com/THUDM/ChatGLM3
cd ChatGLM3
pip install -r requirements.txt -f https://mirror.sjtu.edu.cn/pytorch-wheels/torch_stable.html