#!/bin/bash
echo "Do you have a gpg key?"
echo "1) yes"
echo "2) no"
read choicenum

if [ $choicenum == 1 ]
then
    git add .
    git commit -S -m "commited using auto script"
    git push
fi