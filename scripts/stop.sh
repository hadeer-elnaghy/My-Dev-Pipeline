#!/bin/bash

# Stop the application if it is running, ignore errors if it is not
pm2 stop my-web-app || true
