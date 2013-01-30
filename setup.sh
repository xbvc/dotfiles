#! /bin/bash

# Installscript for my dotfiles

while :
do
echo "Symlink:"
echo 
echo "1. .bashrc"
echo "2. .xinit"
echo "3. .Xresources"
echo "4. .i3"
echo "5. .vim & .vimrc"
echo "6. X"
echo "7. X"
echo "8. Exit"
read opt
case $opt in
1) cd && ln -s .dotfiles/bashrc .bashrc;;
2) cd && ln -s .dotflies/xinitrc .xinitrc;;
3) cd && ln -s .dotflies/Xresources .Xresources;;
4) cd && ln -s .dotfiles/i3/.i3 .i3

8) exit;;
*) echo "$opt is  Unknown"
read enterKey;;
esac
done
