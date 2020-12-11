# openscada-arm64v8-bionic
Spacial Thanks for openscada sources code from http://oscada.org/oscadaArch/LTS/ .
Build for Amlogic SoC embedded by X96-Air TV-BOX Ubuntu-bionic.
And you can run on Docker engine.

How to run
docker run -itd -p 10002:10002 -p 10005:10005 --privileged --device /dev/ttyUSB0:/dev/ttyUSB0 --name openscada -v /root/oscada-root/:/root/.openscada oscada-arm64v8:bionic /usr/bin/openscada_AGLKS --noX11
