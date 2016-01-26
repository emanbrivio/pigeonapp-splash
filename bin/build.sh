#!/usr/bin/env bash

BASE_URL=https://api.pigeonapp.im
CREATE_FORM_PATH=/form/create
SEND_CODE_PATH=/p/
JADE_OBJECT="{\"BASE_URL\":  \"$BASE_URL\", \"CREATE_FORM_PATH\":  \"$CREATE_FORM_PATH\", \"SEND_CODE_PATH\":  \"$SEND_CODE_PATH\" }"
./node_modules/.bin/http-server -c-1 -p $PORT -a 0.0.0.0 &
./node_modules/.bin/jade *.jade **/*.jade -O "$JADE_OBJECT" --watch &
./node_modules/.bin/stylus --use nib --use rupture -c -w ./static/css/
