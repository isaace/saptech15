#!/bin/sh

# git clone https://github.com/bd82/saptech15
# cd saptech15
mv .git /tmp/.
git init
git config --global user.email "shahar.soel@gmail.com"
git config --global user.name "shahars"
git remote add origin https://P13887420:Abcd1234@git.hanatrial.ondemand.com/p13887420trial/saptech15
git add .
git add -u
git commit -m “whatever”
git push origin master -f
