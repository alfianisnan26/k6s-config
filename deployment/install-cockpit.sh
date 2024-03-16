. /etc/os-release
sudo apt install -t ${VERSION_CODENAME}-backports cockpit -y

sudo su
sudo printf "[keyfile]\nunmanaged-devices=none" > /etc/NetworkManager/conf.d/10-globally-managed-devices.conf

sudo nmcli con add type dummy con-name fake ifname fake0 ip4 1.2.3.4/24 gw4 1.2.3.1

# Then please reboot