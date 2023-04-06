#! /bin/bash

# 1 list success, 2 if have same error
## ls -la 1>file1.txt 2>file2.txt


# if error wite in file3.txt also
ls -la > file3.txt 2>&1


# short form
ls -la >& file4.txt