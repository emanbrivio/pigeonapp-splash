#!/usr/bin/env bash

./node_modules/.bin/http-server -c-1 -p $PORT -a 0.0.0.0 &
./node_modules/.bin/jade *.jade --watch &
./node_modules/.bin/stylus --use nib --use rupture -c -w ./static/css/
