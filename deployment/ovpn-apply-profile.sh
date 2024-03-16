# Please generate Tar Profile URL Download via vpn portal
TAR_PROFILE_URL_DOWNLOAD=https://cloud.isnan.me:4443/key/gZu6jmSeleZ2aOpFy7kwoDSjARNsmjji.tar
NAME=default-vpn
PROFILE_NAME=default-vpn-profile.ovpn

curl -k -o ${PROFILE_NAME}.tar ${TAR_PROFILE_URL_DOWNLOAD}
tar -xvf ${PROFILE_NAME}.tar
openvpn3 config-import --config $(ls *.ovpn) --name ${NAME} --persistent
openvpn3 config-acl --show --lock-down true --grant root --config ${NAME}
openvpn3 config-manage --config ${NAME} --allow-compression yes
sudo systemctl enable --now openvpn3-session@${NAME}.service

# To Restart
sudo systemctl restart openvpn3-session@${NAME}.service