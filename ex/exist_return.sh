#! /bin/bash

HOST="noah.ao"

ping -c 1 $HOST

# -eq : equal

if [ "$?" -eq "0" ]
then 
	echo "$HOST reachable."
else
	echo "$HOST unreacheble"
fi

# exit 2
# podemos passar o exit 1 a 255 como resposta de erros para outro 
# scripts
# por default usamos o 0 (zero)

HOST2="cetim.ao"

ping -c 1 $HOST2

RETURN_CODE=$?

# -ne : not equal

if [ "$RETURN_CODE" -ne "0" ]
then
	echo "$HOST2 unreachable."
fi
