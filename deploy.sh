#!/bin/sh

mv .git /tmp/.
git init
git config --global user.email "bamba.soel@gmail.com"
git config --global user.name "bamba"
git remote add origin https://P13887420:Abcd1234@git.hanatrial.ondemand.com/p13887420trial/saptech15
git add .
git add -u
git commit -m “$TRAVIS_BUILD_NUMBER”
git push origin master -f
