git clone https://github.com/bd82/saptech15
cd saptech15
rm –rf .git
git remote add origin https://PXXXXXXXXXXXX:passwordYYYYYYYYY@git.hana.ondemand.com/MY_ACCOUNT/saptech15
it add .
git add -u
git commit -m “whatever”
git push origin master -f
