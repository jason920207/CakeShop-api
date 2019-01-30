# @Author: xiaojiezhang
# @Date:   2018-10-02T19:52:46-04:00
# @Last modified by:   xiaojiezhang
# @Last modified time: 2019-01-30T08:06:22-05:00



#!/bin/bash

curl "http://localhost:4741/sign-in" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"${EMAIL}"'",
      "password": "'"${PASSWORD}"'"
    }
  }'

echo
