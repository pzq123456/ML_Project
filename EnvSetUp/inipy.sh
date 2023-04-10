# Desc: Install python3.8 and pip3.8 
# 环境配置脚本 CentOS 8
sudo dnf groupinstall 'development tools'

sudo dnf install bzip2-devel expat-devel gdbm-devel ncurses-devel openssl-devel readline-devel sqlite-devel tk-devel xz-devel zlib-devel wget

VERSION=3.8.5

# wget https://www.python.org/ftp/python/${VERSION}/Python-${VERSION}.tgz
wget https://mirrors.huaweicloud.com/python/${VERSION}/Python-${VERSION}.tgz
tar -xf Python-${VERSION}.tgz


cd Python-${VERSION}
./configure --enable-optimizations

make -j 4

sudo make altinstall

# test python3.8
python3.8 --version

# test pip3.8
pip3.8 --version

# pip 全局切换清华源
pip3.8 config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple

# get out of Python-${VERSION} and the EnvSetUp file
cd ../..  

# install requirements
pip3.8 install -r requirements.txt







