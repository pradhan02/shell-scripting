#!/bin/bash

## To print some text on screen then we can use echo command or printf command
## We choose to go with echo command because of its less syntaxing

# Syntax
## echo Message to Print

echo Hello World
echo Welcome

# ESC Sequences, \n (new line), \t (tab space), \e (new tab)

#Syntax: echo -e  "Message\nNew Line"
# To enable any esc seq we need to enable -e option
# Also the inout should be in quotes, preferably double quotes

echo -e "Hello World\nWelcome"

echo -e "Word1\t\tword2"


