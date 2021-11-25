#!/bin/sh

echo "Pulling latest wireguard-kmod..."
curl -LJo wireguard-kmod.tar.Z https://github.com/tusc/wireguard-kmod/releases/download/v11-05-21/wireguard-kmod-11-05-21.tar.Z
tar -C /mnt/data -xvzf wireguard-kmod.tar.Z
cd /mnt/data/wireguard
chmod +x setup_wireguard.sh
/bin/sh ./setup_wireguard.sh

echo "Moving setup_wireguard.sh to on_bood.d directory..."
cp ./setup_wireguard /mnt/data/on_boot.d/10-setup-wireguard.sh
echo "wg-quick up" >> /mnt/data/on_boot.d/10-setup-wireguard.sh
chmod +x /mnt/data/on_boot.d/10-setup-wireguard.sh

echo ""
echo "There is a sample wireguard config in /etc/wireguard"
echo "Don't forget to generate your public/private keys and configure wg0.conf"
echo ""
echo "Visit https://github.com/tusc/wireguard-kmod for more info."
echo ""