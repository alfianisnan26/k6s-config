sudo su
apt update
apt install curl gnupg2 wget unzip -y

apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv E162F504A20CDF15827F718D4B7C549A058F8B6B
apt-key adv --keyserver hkp://keyserver.ubuntu.com --recv 7568D9BB55FF9E5287D586017AE645C0CF8E292A
echo "deb http://repo.pritunl.com/stable/apt focal main" | tee /etc/apt/sources.list.d/pritunl.list

apt update
apt install pritunl -y

systemctl start pritunl
systemctl enable pritunl
systemctl status pritunl

# install MongoDB
docker run -d -p 27772:27017 --name mongo mongo

pritunl setup-key
pritunl default-password

pritunl set app.redirect_server false
pritunl set app.server_port 4443

systemctl restart pritunl

# Remove Routing to 0.0.0.0/0
# Disable Restrict Routing
# Enable DNS Routing