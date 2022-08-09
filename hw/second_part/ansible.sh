apt-get udpate

apt-get install pip python3 git

python3 -m pip install ansible


git clone https://github.com/Haltax/terraform.git
cd terraform/hw/second_part
ansible-playbook task.yml
ansible-galaxy install geerlingguy.mysql
ansible-playbook mysql_ec2.yml
