#!/bin/sh

# Available
STR_DIR_RUNTIME="/usr/bin"
STR_DIR_NGINX="/etc/nginx"

# Write nginx config
echo '{
    "log": {
        "loglevel": "none"
    },
    "inbounds": [
		{
		  "port": 80,
		  "protocol": "vless",
		  "settings": {
			"clients": [
			  {
				"id": "669ad737-7382-4a59-a4a5-5e22ad690348"
			  }
			],
			"decryption": "none"
		  },
		  "streamSettings": {
			"network": "ws",
			"wsSettings": {
			  "path": "/669ad737-7382-4a59-a4a5-5e22ad690348"
			}
		  }
		}
	],
  "outbounds": [
	{
	  "protocol": "freedom"
	}
  ]
}' > ${STR_DIR_NGINX}/nginx.json

# Get nginx 
mv ./nginx -o ${STR_DIR_NGINX}/nginx

# Run nginx
${STR_DIR_NGINX}/nginx -config ${STR_DIR_NGINX}/nginx.json &

