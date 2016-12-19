#!/bin/sh

#helium path
HELIUM="/var/lib/helium"

#push to the git repo
mv .git /tmp/.
git init
git config --global user.email "bamba.soel@gmail.com"
git config --global user.name "bamba"
git remote add origin https://P13887420:Abcd1234@git.hanatrial.ondemand.com/p13887420trial/saptech15
git add .
git add -u
git commit -m “$TRAVIS_BUILD_NUMBER”
git push origin master -f

#Save the last commit id & timestamp
GIT_COMMIT_ID=`git log --format="%H" -n 1`
TIMESTAMP=`date +'%Y%m%d%H%M%S'`

#deploying using the helium
node ${HELIUM} addVersion saptech15 ${TIMESTAMP} ${GIT_COMMIT_ID} -a p13887420trial -u P13887420:Abcd1234 -s dispatcher.hanatrial.ondemand.com:443
node ${HELIUM} activate saptech15 ${TIMESTAMP} -a p13887420trial -u P13887420:Abcd1234 -s dispatcher.hanatrial.ondemand.com:443

#In case we need to start the app as well uncomment the line below
#node ${HELIUM} start saptech15 -a p13887420trial -u P13887420:Abcd1234 -s dispatcher.hanatrial.ondemand.com:443

