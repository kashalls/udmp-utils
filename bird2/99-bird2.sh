#!/bin/sh
podman exec unifi-os /bin/bash -c "rm -f /etc/bird/bird.conf"
podman exec unifi-os /bin/bash -c "apt install libssh-gcrypt-4 -y"
podman exec unifi-os /bin/bash -c "curl -fsSLo /tmp/bird2.deb https://github.com/Kashalls/udmp-utils/raw/master/bird2/bird2_2.0.9-cznic.1_arm64.deb"
podman exec unifi-os /bin/bash -c "dpkg -i /tmp/bird2.deb"
podman exec unifi-os /bin/bash -c "curl -fsSLo /etc/bird/bird.conf https://raw.githubusercontent.com/Kashalls/udmp-utils/master/bird2/bird.conf"
podman exec unifi-os /bin/bash -c "birdc configure"
