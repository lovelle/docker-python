#!/bin/bash

cd /app
venv/bin/gunicorn ${APP_MAIN} -b 0.0.0.0:8080
