# openscada-arm64v8-bionic
docker run -itd -p 10002:10002 -p 10005:10005 --device /dev/ttyUSB0:/dev/ttyUSB0 --name openscada -v /root/oscada-root/:/root/.openscada oscada-arm64v8:bionic /usr/bin/openscada_AGLKS --noX11
