#!/bin/sh
myzshrc=${HOME}/.zshrc
if [ ! -f "$myzshrc" ];then
    cp ~/fuzzfilefinder/.zshrc ${HOME}/.zshrc
else
    cat ~/fuzzfilefinder/.zshrc >> ${HOME}/.zshrc
fi

fuzzfilefinder={HOME}/fzf/
if [ ! -d "$fuzzfilefinder" ];then
    cp -R ~/fuzzfilefinder/fzf/ ${HOME}/;
else
    mv ~/fzf/ ${HOME}/fzftmp/
    cp -R ~/fuzzfilefinder/fzf/ ${HOME}/;
fi

cp -R ~/fuzzfilefinder/.fzf/ ${HOME}/;

autojump={HOME}/autojump/
if [ ! -d "$autojump" ];then
    cp -R ~/fuzzfilefinder/autojump/ ${HOME}/;
fi
cp ~/fuzzfilefinder/.fzf.zsh ${HOME}/;
cd ~;cd .fzf/;./install;
cd ~;cd autojump/;./install.py;

echo "Fzf install success!"
