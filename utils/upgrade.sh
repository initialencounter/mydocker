sudo apt update
sudo apt upgrade
sudo apt dist-upgrade
sudo apt install update-manager-core

# 升级到非 LTS 版本
sed -i 's/Prompt=lts/Prompt=normal/' /etc/update-manager/release-upgrades

sudo do-release-upgrade