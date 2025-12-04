#!/bin/bash
nomeApp="meu-app"
cd /appdir
npm install

sudo supervisord
sudo supervisorctl start $nomeApp