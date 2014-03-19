#!/bin/bash
clear
echo "-------------------------------------------------------------------------"
rm /etc/init.d/pm2-init.sh
echo "-------------------------------------------------------------------------"
pm2 dump
echo "-------------------------------------------------------------------------"
pm2 delete all
echo "-------------------------------------------------------------------------"
pm2 kill
echo "-------------------------------------------------------------------------"
git pull https://giovaneh@bitbucket.org/giovaneh/isptools.git
echo "-------------------------------------------------------------------------"
pm2 start app.js -f -i max --name ISPTools
echo "-------------------------------------------------------------------------"
pm2 web
echo "-------------------------------------------------------------------------"
pm2 -f startup ubuntu
echo "-------------------------------------------------------------------------"
echo "OK"
