#! /bin/bash

function backup_file() {
	if [ -f $1 ]
	then 
		BACK="/tmp/$(basename ${1}).$(date +%F).$$"
		echo "Backing up $1 to ${BACK}"
		cp $1 $BACK
	else
		return 1
	fi
}

# chamando a funcao e passando o parametro
backup_file /etc/hostsss

# verificar  o status  apos a execucao da funcao
if [ $? -eq 0 ]
then
	echo "Backup succeeded!"
else
	echo $?
fi

