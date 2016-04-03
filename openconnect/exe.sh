#!/usr/bin/env bash
#warning : getting error /usr/bin/env: sh: No such file if the script has windows line endings instead of unix line endings. 
echo "Starting openconect"
echo "${VPN_PASSWORD}" | openconnect --background --pid-file=/run/openconnect_vpn.pid ${VPN_ARGS}


# USE the trap if you need to also do manual cleanup after the service is stopped,
#     or need to start multiple services in the one container
trap "kill -INT $(cat /run/openconnect_vpn.pid) ;" HUP INT QUIT KILL TERM

exec "/bin/bash"
