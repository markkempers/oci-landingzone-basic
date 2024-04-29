#!/bin/bash

$SSH = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCxo+wQhd7VTzeTj2X4XjL0V+c+g7B7uEnShWLQ5TLzf/iG34w5KYHMQhNJepWpoxJryRCl5Gt7ENM3XXYQD3jC5Rfujo6iBGhtuoA+mu5edsvEnT4mhGr6b6oT8dBhvAD+UkwPxp3yGv81j91GijuCYjFYCEvSC4kZ2HM2+H+IuT3KOLITSTZe4N8C+Qd9uiMpZIGdyrk2yzRghhcaO/DR8dOyGO+rFrghvWnHeOMHAPlFNrS75hH6YpxMgFWdm8TVfzE53J1m7vZul8O9H3RSnCoHI9ssZbZ6NyKoSxlrtybI3CBzskADR4Zf6P6NTSME5CyJiqENlMC3FekVRd5/ root@Ansibleserver"

# Script to create the ansible user
useradd -m -s /bin/bash ansible

#Make sure ssh directory and authorized_keys file is present
mkdir /home/ansible/.ssh
chown ansible:ansible /home/ansible/.ssh
chmod 700 /home/ansible/.ssh
echo $SSH > /home/ansible/.ssh/authorized_keys
chown ansible:ansible /home/ansible/.ssh/authorized_keys
chmod 600 /home/ansible/.ssh/authorized_keys

echo -e 'Defaults:ansible \nansible ALL=(ALL) NOPASSWD: ALL' > /etc/sudoers.d/ansible
chmod 0600 /etc/sudoers.d/ansible
visudo -cf /etc/sudoers.d/ansible