#!/usr/bin/bash

echo "===0. check the access of github"
# use this link to modify hosts
# https://www.cnblogs.com/guotianbao/p/16028058.html

# use when in docker
unminimize -y

echo "===1. install git, gcc, g++, tmux, python, vim, xclip, xsel, autojump"

apt update -y
apt install git -y
apt install gcc -y
apt install g++ -y
apt install tmux -y
apt install python -y
apt install vim -y
apt install xclip -y
apt install xsel -y
apt install autojump -y
apt install curl -y
apt install zsh -y


echo "===2. install oh my tmux"

cd
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cd -
cp .tmux.conf.local ~


echo "===3. install tpm"

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
tmux source ~/.tmux.conf
tmux source ~/.tmux.conf.local


echo "===4. install oh my zsh"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/oskarkrawczyk/honukai-iterm-zsh.git
cp honukai-iterm-zsh/honukai.zsh-theme ~/.oh-my-zsh/custom/themes/
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
t clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

cp .zshrc ~
zsh
source ~/.zshrc


echo "===5. install awesome vim"

git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh




