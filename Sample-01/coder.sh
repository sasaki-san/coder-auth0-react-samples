awk -v domain="$AUTH0_DOMAIN" -v client_id="$AUTH0_APP_CLIENT_ID" -v api_id="$AUTH0_API_ID" '{gsub("{DOMAIN}", domain); gsub("{CLIENT_ID}", client_id); gsub("{API_IDENTIFIER}", api_id); print}\' ./src/auth_config.json.example > ./src/auth_config.json
