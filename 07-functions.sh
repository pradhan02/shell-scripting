#!/bin/bash

## Functions should always declared before using it. same like variable
## So that is the reason, Function me always find in starting of the scripts

abc() {
echo i am a function abc
a=100
echo a in function =$a
b=20
echo first argument in function

}


xyz() {
 echo i am a function xyz
}

## Main Program
a=10
abc
echo b in main program = $b
xyz

echo first argument in main program = $1