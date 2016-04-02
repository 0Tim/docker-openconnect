First, create env.txt with following lines :
VPN_ARGS=--no-cert-check --authgroup=G1 -u user1  https://vpn.com
VPN_PASSWORD=Pass

then run 
docker run  --privileged --env-file ./env.txt -i -t tmieulet/openconnect

