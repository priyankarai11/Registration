#!/bin/bash
echo "User Registration"
echo "Enter First name"
read f
First="^[A-Za-z]{3,}$"
echo "Enter Last name"
read l
Last="^[A-Za-z]{3,}$"
if [[ $f =~ $First && $l =~ $Last ]]
then
	echo Valid
else
	echo Invalid
fi

echo "----------------"
echo "Checking mail"
echo "Enter mail"
read e
pat="^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$"
if [[ $e =~ $pat ]]
then
        echo Valid
else
        echo Invalid
fi


