#!/bin/bash

cd ~
echo -e "\033[0;32m-- Install dependencies"
echo -e "\033[0m"
sudo apt-get -y install build-essential openssl libssl-dev libssl1.0 libgl1-mesa-dev libqt5x11extras5 '^libxcb.*-dev' libx11-xcb-dev libglu1-mesa-dev libxrender-dev libxi-dev libxkbcommon-dev libxkbcommon-x11-dev
sudo apt install vulkan-tools libvulkan-dev -y
sudo apt install gdb -y
 
sudo apt install ninja-build -y
sudo apt install cmake -y
sudo apt install python3.11-venv -y
 
echo -e "\033[0;32m-- Install Qt installation tool"
echo -e "\033[0m"
python3 -m venv .aqtinstall-venv
source .aqtinstall-venv/bin/activate
pip install aqtinstall
 
echo -e "\033[0;32m-- Configure Qt installation tool"
echo -e "\033[0m"
cat > "$HOME/qt_install.cfg" <<EOF
[aqt]
baseurl: https://qt-mirror.dannhauer.de/
 
[requests]
max_retries_on_checksum_error: 1
max_retries_to_retrieve_hash: 1
INSECURE_NOT_FOR_PRODUCTION_ignore_hash: True
 
[mirrors]
fallbacks:
    https://mirrors.ocf.berkeley.edu/qt
    https://qt.mirror.constant.com/
    https://ftp.acc.umu.se/mirror/qt.io/qtproject/
    https://qtproject.mirror.liquidtelecom.com/
    https://ftp.jaist.ac.jp/pub/qtproject
    http://ftp1.nluug.nl/languages/qt
    https://mirrors.dotsrc.org/qtproject
    https://mirror.yandex.ru/mirrors/qt.io
EOF
 
echo -e "\033[0;32m-- Install Qt"
echo -e "\033[0m"
aqt -c qt_install.cfg install-qt linux desktop 6.7.0 -m all
aqt -c qt_install.cfg install-tool linux desktop tools_qtcreator_gui
sudo mv /usr/bin/qtcreator /usr/bin/qtcreator.backup
sudo ln -s ~/Tools/QtCreator/bin/qtcreator /usr/bin/
 
echo -e "\033[0;32m-- Add Qt to the PATH"
echo -e "\033[0m"
BASHRC="$HOME/.bashrc"
# echo 'export QTDIR="$HOME/6.7.0/gcc_64"' >> "$BASHRC"
# echo 'export PATH="$QTDIR/bin:$PATH"' >> "$BASHRC"
# echo 'export LD_LIBRARY_PATH="$QTDIR/lib:$LD_LIBRARY_PATH"' >> "$BASHRC"

