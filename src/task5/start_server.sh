#!/bin/bash
gcc server.c -lfcgi -o server
spawn-fcgi -p 8080 ./server
chmod +x /start_server.sh
nginx -g "daemon off;"