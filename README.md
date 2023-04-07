# bash_script


# INIT
clone the project 

# Change Permission of file 
chmod +x file_name.sh

# RUN
./file_name.sh


# Show all shells in your machine
- cat /etc/shells 


# Show default bash
- which bash

- https://wiki.archlinux.org/title/SSMTP

# to send email config
-  sudo gedit /etc/ssmtp/ssmtp.conf

## the values above 
root=
mailhub=
AuthUser=
AuthPass=

## after finish Ctrl + d in blank line to send you email


## using a file external 

- ./sendemail.sh -t < sendemail.txt

# example files to download
- https://proof.ovh.net/files/