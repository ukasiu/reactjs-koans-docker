#!/bin/bash

echo "Waiting for web server to lauch on 8080..."

while ! nc -z server 8080; do
  sleep 0.1
done

exec npm run watch