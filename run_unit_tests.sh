#!/bin/bash
apt-get update
apt-get install -y python wget
wget https://bootstrap.pypa.io/get-pip.py
python get-pip.py
pip install virtualenv
pip install tox
apt-get install -y git python-dev python3-dev libxml2-dev libxslt1-dev \
    libsasl2-dev libsqlite3-dev libssl-dev libldap2-dev libffi-dev gettext
git clone http://github.com/jcsiam/keystone
cd keystone
tox -epy27
