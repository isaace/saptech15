#!/bin/sh

# git clone https://github.com/bd82/saptech15
# cd saptech15
man rm
rm –R -f .git
git remote add origin https://P13887420:Abcd1234@git.hana.ondemand.com/p13887420trial/saptech15
git add .
git add -u
git commit -m “whatever”
git push origin master -f
