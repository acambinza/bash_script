#! /bin/bash

# hello
echo "hello bash"

# redirect to file
echo "hello bash print text to file" > file.txt

# new line
cat > file_cat.txt

# append line
cat >> file_cat_append.txt

# comment single
# comment multiple line 

: ' 
    commet multiple line
    other line
'


# kreativ - using to delimitter text
cat << kreativ 
this is hello creative text
and another line
kreativ

