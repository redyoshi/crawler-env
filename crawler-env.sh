#! /bin/bash
apt-get update
wget https://raw.githubusercontent.com/pypa/pip/master/contrib/get-pip.py
python get-pip.py
apt-get install -y gcc python-dev libxml2 libxml2-dev libxslt1-dev python-lxml firefox redis-server xvfb xfonts-100dpi xfonts-75dpi xfonts-scalable xfonts-cyrillic x11-apps  imagemagick python-imaging libjpeg8 libjpeg62-dev libfreetype6 libfreetype6-dev

pip install scrapy selenium redis xvfbwrapper
cd /etc/init.d
wget https://raw.githubusercontent.com/redyoshi/crawler-env/master/xvfb
chmod +x xvfb
service xvfb start
