#!/bin/bash

cd /app
gunicorn ${APP_MAIN} -b 0.0.0.0:8080
