#!/bin/bash

sh /commands/package.sh

cd /app
gunicorn ${APP_MAIN} -b 0.0.0.0:8080
