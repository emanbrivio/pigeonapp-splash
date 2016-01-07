#!/usr/bin/env bash

API_URL=api.pigeonapp.im
echo $API_URL
JADE_OBJECT="{\"API_URL\":  \"$API_URL\"}"
./node_modules/.bin/http-server -c-1 -p $PORT -a 0.0.0.0 &
./node_modules/.bin/jade *.jade **/*.jade -O "$JADE_OBJECT" --watch &
./node_modules/.bin/stylus --use nib --use rupture -c -w ./static/css/
