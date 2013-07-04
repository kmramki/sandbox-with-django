#!/bin/bash

[ "`uname -s`" == "Linux" ] ; IS_LINUX=$?

curl -O https://raw.github.com/pypa/virtualenv/master/virtualenv.py
python virtualenv.py .env
. .env/bin/activate
 
pip install django
pip install ujson
pip install pexpect
pip install ipython

if [ $IS_LINUX -eq 1 ]
then
	 pip install mysql-python
else
	 pip install python-mysql
fi

