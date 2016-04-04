#!/bin/bash

mkdir -p /package
mkdir -p /output

echo "Packaging..."

cd /app
python2.7 -m compileall .

pip install gunicorn==19.4.5
pip install -r requirements.txt

cp -fr /app/* /output/
cp -fr /app/* /package/

find /output/ -type f -name "*.py" -exec rm -f {} \;
find /package/ -type f -name "*.py" -exec rm -f {} \;
