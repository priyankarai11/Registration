#!/bin/bash
echo "User Registration"
echo "Enter First name"
read f
First="^[A-Za-z]{3,}$"
if [[ $f =~ $First ]] 
then
	echo Valid
else
	echo Invalid
fi
