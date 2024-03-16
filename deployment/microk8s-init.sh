sudo apt install net-tools

# INTERFACE=enp0s2
INTERFACE=ens4
IP_GATEWAY="192.168.26.1"
sudo ip route del default
sudo ip route add default via ${IP_GATEWAY} dev ${INTERFACE}

sudo snap remove microk8s && sudo snap install microk8s --classic

sudo usermod -a -G microk8s $(whoami)
mkdir ~/.kube
sudo chown -f -R $(whoami) ~/.kube

newgrp microk8s

# Wait for a while...
microk8s status --wait-ready

# Add other node from master node
microk8s add-node

microk8s enable observability



