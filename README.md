## SCRIPT BASH


## Shebang

A "shebang" é uma sequência de caracteres que aparece no início de scripts em sistemas Unix e Unix-like (como Linux e macOS). Ela indica ao sistema qual interpretador deve ser usado para executar o script. A linha shebang começa com `#!` (chamado de hashbang ou sharp-bang) seguido do caminho para o interpretador.

#!/usr/bin/env python3

Isso diz ao sistema para usar o interpretador Python 3 

e fosse um script Bash, o shebang poderia ser:

#!/bin/bash

### Variables

- Syntax
    
    VARIABLE_NAME=”value”
    

Obs.: do not use space after or before a equals signal 

- Usage
    
    echo “I like $VARIABLE_NAME”
    
    or
    
    echo “ I like ${VARIABLE_NAME} “
    

### Tests

- Syntax 
    [ condition-to-test-for ]

- Example
    [ -e /etc/password ]

