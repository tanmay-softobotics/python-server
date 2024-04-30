#! /bin/bash

gunicorn --bind 0.0.0.0:8000 server:myapp --daemon

nginx -g "daemon off;"