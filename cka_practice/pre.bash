

yum install git python-virtualenv gcc python-devel libffi-devel openssl-devel
modprobe br_netfilter
echo '1' > /proc/sys/net/bridge/bridge-nf-call-iptables
