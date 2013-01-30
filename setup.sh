#! /bin/bash

# Installscript for my dotfiles

while :
do
echo 
echo -e "\e[00;31mATTENTION: This script deletes the original dotfiles!\e[00m"
echo 
echo "Symlink:"
echo "1: .bashrc"
echo "2: .xinit"
echo "3: .Xresources"
echo "4: .i3"
echo "5: .vim & .vimrc"
echo "6: X"
echo "7: X"
echo "8: Exit"
read opt
case $opt in
1) cd && rm .bashrc && ln -s .dotfiles/bashrc .bashrc;;
2) cd && rm .xinitrc && ln -s .dotflies/xinitrc .xinitrc;;
3) cd && rm .Xresources && ln -s .dotflies/Xresources .Xresources;;
4) cd && rm -rf .i3 && ln -s .dotfiles/i3/.i3 .i3;;
5) cd && rm -rf .vim && rm .vimrc && ln -s .dotfiles/vim/.vim .vim && ln -s 
.dotfiles/vim/.vimrc .vimrc;;

8) exit;;
*) echo "$opt is  Unknown"
read enterKey;;
esac
done
