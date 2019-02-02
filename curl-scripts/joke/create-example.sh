# @Author: xiaojiezhang
# @Date:   2019-02-01T15:24:05-05:00
# @Last modified by:   xiaojiezhang
# @Last modified time: 2019-02-01T15:24:35-05:00

curl "https://morning-falls-75749.herokuapp.com/jokes" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "joke": {
      "joke_input": "'"${TEXT}"'"
    }
  }'

echo
