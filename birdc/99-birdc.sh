#!/bin/sh

podman exec unifi-os /bin/bash -c "curl -fsSLo /etc/bird/bird.conf https://raw.githubusercontent.com/Kashalls/udmp-utils/master/birdc/bird.conf"
podman exec unifi-os /bin/bash -c "apt install bird -y && birdc configure"
