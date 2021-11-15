#!/bin/bash

## If we assign a name to a set of data, then that is variable
# Syntax: VAR-DATA

# Number
a=100
# String
b=abc

# In bash shell and also by default there are no data types, Shell considers everything as String

# Access the data in shell using $ character prefixing the variable name, Or you can also access variables with ${}

echo Value of a = $a
echo Value of b = $b
echo Value of a = ${a}


x=10
y-20
echo ${x}X{y} = 200

# DATE=2021-10-20
 DATE=$(DATE+$%F)
echo Good Morning, Welcome, Today date is #DATE

# Arth subtitution
ADD=$((2+3+4+5+6*7/2))
echo added = $ADD

