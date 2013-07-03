#!/bin/bash

curl -O https://raw.github.com/pypa/virtualenv/master/virtualenv.py
python virtualenv.py .env
. .env/bin/activate

pip install django
pip install ujson
pip install pexpect
pip install ipython
pip install python-mysql

