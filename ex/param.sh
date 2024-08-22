#! /bin/bash

read -p "Enter a user name: " USER

echo "Archiving user: $USER"

# Lock the account
passwd -l $USER

# Create an arquive of home directory
#tar cf /tmp/${1}.tar.gz /home/${1}
cp -rp /tmp/ /home/${USER}
