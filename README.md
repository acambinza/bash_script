# SCRIPT BASH


## Shebang

A "shebang" é uma sequência de caracteres que aparece no início de scripts em sistemas Unix e Unix-like (como Linux e macOS). Ela indica ao sistema qual interpretador deve ser usado para executar o script. A linha shebang começa com `#!` (chamado de hashbang ou sharp-bang) seguido do caminho para o interpretador.

#!/usr/bin/env python3

Isso diz ao sistema para usar o interpretador Python 3 

e fosse um script Bash, o shebang poderia ser:

#!/bin/bash

## Variables

- Syntax
    
    VARIABLE_NAME=”value”
    

Obs.: do not use space after or before a equals signal 

- Usage
    
    echo “I like $VARIABLE_NAME”
    
    or
    
    echo “ I like ${VARIABLE_NAME} “
    
## File Operators

- Syntax 
    [ condition-to-test-for ]

- tags
    -d File   - True if file is a directory
    -e File   - True if file exists
    -f File   - True if file exists and is a regular file
    -r File   - True if file is readable by you
    -s File   - True if file exists and is not empty
    -w File   - True if the file is writable by you
    -x File   - True if the file is executable by you
    
    -z String - True if string is empty
    -n String - True if string is not empty

    STRING1 = STRING2 - True if the string are equal
    STRING1 != STRING2 - True if the string are not equal

- Example



## Arithemetic operators

- tags
    arg1 -eq arg2 - True if arg1 is equal to arg2
    arg1 -ne arg2 - Treu if arg1 is not equal to arg2

    arg1 -lt arg2 - True if arg1 is less than arg2
    arg1 -le arg2 - Treu if arg1 is less than or equal to arg2

    arg1 -gt arg2 - True if arg1 is greater than arg2
    agr1 -ge arg2 - Treu if arg1 is greater than or equal to arg2


## Making Decisions - The if statement

### IF

    if [ condition-is-true ]
    then 
        command 1
        command 2
        command N
    fi

```bash
#! /bin/bash

MY_NAME="Anselmo"

if [ "$MY_NAME" = "Anselmo" ]
then
   echo "name is equal"
fi
```

### IF ELSE

    if [ condition-is-true ]
    then 
        command N
    else
        command N
    fi

```bash
#! /bin/bash

MY_NAME="Anselmo"

if [ "$MY_NAME" = "Anselmo" ]
then
   echo "name is equal"
else
    echo "name is not equal"
fi
```


## FOR

- Sixtaxe


```bash
#! /bin/bash

MY_NAME="Anselmo"

for VAN_NAME in ITEM_1 ITEM_N
do
    command 1
    command 2
    command N
done
```

- example



```bash
#! /bin/bash

COLORS="red green blue"

for COLOR in $COLORS
do
    echo "COLOR: $COLOR"
done
```


## Positional Parameters

- scrpit.sh param1, param2

$0 : "script.sh"
$1 : "param1"
$2 : "param2"


com o $@ - pega todo os paramentros passados


## Accepting User Input (STDIN)

- Syntax:
    ```bash
    read -p "PROMPT TXT" VARIABLE
    ```


## EXIT STATUS / RETURN CODE

$? - usado para capturar saída do ultimo comando

0 se for sucesso

```bash

#!/bin/bash

# Executa um comando qualquer
ls /caminho/para/diretorio

# Captura o código de saída do comando anterior
codigo_saida=$?

# Verifica se o comando foi bem-sucedido
if [ $codigo_saida -eq 0 ]; then
  echo "O comando foi executado com sucesso."
else
  echo "O comando falhou com o código de saída: $codigo_saida"
fi


```


## && and ||

- && = AND
- || = OR
- Semicolon ; (Separate commands for execute)

# EXIT
- Explicitly define the return the code
- - exit 0
- - exit 1
- - exit 2
- - exit 255

```js
# exit 2
# podemos passar o exit 1 a 255 como resposta de erros para outro 
# scripts
# por default usamos o 0 (zero)
```

## FUNCTIONS

- if you're repeating yourself
- Reusable code
- Must be defined before use
- Has parameter support

- Sintaxa

```sh
# 01
function function-name() {

}

#02
function-name() {

}

```


- use the function
```sh
# 01
function hello() {
    echo "Hello!"
}

# cal the without ()
hello
```

- para definir uma variavel apenas acessivel no escopo da funcao, usamos o local antes do nome da funcao


- exemplo de uma funcao que e chamada e passando o paramentro
```sh

#! /bin/bash

function backup_file() { 
        if [ -f $1 ]
        then 
                BACK="/tmp/$(basename ${1} ).$(date +%F).$$"
                echo "Backing uo $1 to ${BACK}"
                cp $1 $bBACK
        fi
}

backup_file /etc/hosts
if [ $? -eq 0]
then 
        echo "Backup succeeded!"
fi

```


## Checklist

1. Shebang
2. Comments / file header
3. Global variables
4. Functions
    - Use local variables
5. Main script contents
6. Exit with an exist status
    - exit <STATUS> at verious exit points



# Wildcard
- A charater or string used for pattern matching
- Globbing expands the wildcard patter into a list of files and/or directories. (paths)
- Ideial para seleccionar mais de um ficheiro

- example
    - \*  - matches zero or more characters
        - *.txt
        - a*
        - a*.txt
    - \? - matches exactly one character
        - ?.txt
        - a?
        - a?.
    - [] - A character class
        - Matches any of the characters included between the branchets. Matches exactly one character.
        - [aeiou]
        - ca[nt]*

    - [!] - Matches any of the characters NOT included between the branchets. Matches exactly one character
        - [!aeiou]*     

    - [a-g]* = a,b,c,d,e,f or g
    - [3-6]* = 3,4,5 or 6
    - [[:alpha:]]
    - \ - *\? = done? - just a one of any character

    * cp *.html /var/www/

    

# CASE STATEMENTS
- sintaxe
```sh

case "$VAR" in 
    pattern_1)
        #  Commands
        ;;
    
    pattern_N)
        # Commands
        ;;
esac
```

- Example

```sh

case "$1" in 
    start)
        #  Commands
        /usr/sbin/sshd
        ;;
    
    stop)
        # Commands
        kill $(cat /var/run/sshd.pid)
        ;;
    *)
        echo "Usage: $0 start|stop" ; exit 1
        ;;
    
esac
```

# READ INPUT AND CASE

```sh

read -p "Entre y or n: " ANSWER

case "$ANSWER" in 
    
    [yY][yY][eE][sS])
        #  Commands
        echo "You answered yes."
        ;;
    
    [nN][nN][oO])
        # Commands
        echo "You answered no."
        ;;
    *)
        echo "Invalid answer"
        ;;

esac
```

# LOGGIN

## Logs are the who, what, when, where and why

- The syslog standard uses facilities and severities to categorize messages.
  - Facilities: kern, user, mail, daemon, auth, local0. local7
  - Severities: emerg, alert, crit, err, warning, notice, info, debug

- Log file locations are configurable:
    - /var/log/messages
    - /var/log/syslog

### NOTE: local0, and local7, desem ser usada para criar logs personalizados

### Loggin with looger
- The logger utility
- By default creates user.notice messages.

 - tags
    * -p para especificar a gravidade do erro: 
        ```sh
            logger -p local0.info "Message"        
        ```
    * -t para marca ou criar uma tag a mensagem do log
        ```sh
            logger -t mysscript -p local0.info "Other Message"        
        ```
    * -i para criar um PIDD no log
        ```sh
            logger -i -t myscript -p local0.info "Other Message"        
        ```
    * -s para fazer o display a seguir o log
         ```sh
            logger -s -i -t myscript -p local0.info "Other Message"        
        ```

#### STEPS
- 01 
    - sudo nano /etc/rsyslog.d/50-default.conf
- 02

    - local0.*    /var/log/local0.log
    - local7.*    /var/log/local7.log
    - sudo systemctl restart rsyslog

- 03
    - logger -p local0.info "Esta é uma mensagem de teste para local0"
    - logger -p local7.info "Esta é uma mensagem de teste para local7"


-04 
    - cat /var/log/local0.log
    - cat /var/log/local7.log

- 05
    - tail -f /var/log/local0.log
    - tail -f /var/log/local7.log



# While Loops


- Sintaxe
    ```sh
        while [ CONDITION_IS_TRUE ]
        do
            # Command 1        
            # Command 2        
            # Command N
        done        
    ```
- lt : less than
- Exemple
    ```sh
       INDEX=1
        while [ $INDEX -lt 6 ]
        do
            echo "Creating project-${INDEX}"
            mkdir project-${INDEX}
            ((INDEX++))
        done       
    ```

~
# DEBUG
* -x :  Prints commands as they execute
* After substitutions and expansions
* Called an x-trace. tracing, or print debugging
* #!/bin/bash -x
* set -x
    - set -x to stop debagging

- Exemple
    ```sh
        #!/bin/bash -x

        TEST_VAR="test"
        echo "$TEST_VAR"       
    ```