#!/bin/bash
gpg --list-secret-keys --keyid-format LONG
echo "Want to use existing gpg key"
echo "1) yes"
echo "2) no"
read choicenum

if [ $choicenum == 1 ]
then
    echo "Copy the key id"
    read keyb
    git config --global user.signingkey $keyb
    git add .
    git commit -S
    git push
elif [ $choicenum == 2 ]
then
    gpg --full-generate-key
    gpg --list-secret-keys --keyid-format LONG
    echo "select the keyid"
    read keyid
    gpg --armor --export $keyid
    echo "now paste this on github and run me again"
fi

