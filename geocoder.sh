BASE_URL="https://maps.googleapis.com/maps/api/geocode/json"
API_KEY=$GOOGLE_API_KEY # Obtain an API key from https://developers.google.com/maps/documentation/geocoding/get-api-key
ADDRESS=$1
URL="${BASE_URL}?address=${ADDRESS}&key=${API_KEY}"
curl   -s -G $(echo $URL | tr ' ' '+') | jq '.results[] | \(.geometry.location.lat),\(.geometry.location.lng)'




