 [pre_setting.sh ]
#!/usr/bin/env bash

yum install epel-release -y
yum install ansible -y

# Add hosts
echo "192.200.10.11 vmhost01" >> /etc/hosts
echo "192.200.10.12 vmhost02" >> /etc/hosts
echo "192.200.10.13 vmhost03" >> /etc/hosts
echo "192.200.10.14 vmhost04" >> /etc/hosts
echo "192.200.10.15 vmhost05" >> /etc/hosts


#ansible hosts
echo "[Hosts]" >> /etc/ansible/hosts
echo "vmhost01" >> /etc/ansible/hosts
echo "vmhost02" >> /etc/ansible/hosts
echo "vmhost03" >> /etc/ansible/hosts
echo "vmhost04" >> /etc/ansible/hosts
echo "vmhost05" >> /etc/ansible/hosts

#init vagrant
mkdir /home/vagrant/.vim
touch /home/vagrant/.vimrc
touch /home/vagrant/.bashrc