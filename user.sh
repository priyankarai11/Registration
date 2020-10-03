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



echo "--------------------"
echo "Checking for mobile number"
echo "Enter Phone number"
read num
p="^([9]{1}[1]{1}) ([0-9]{10})$"
if [[ $num =~ $p ]]
then
        echo Valid
else
        echo Invalid
fi

echo "---------------------"
echo "Checking password"
echo "Enter Password"
read s
if [[ ${#s} -ge 7 && "$s" == *[[:lower:]]* && "$s" == *[[:upper:]]* && "$s" == *[0-9]* || "$s" ==  [[^@#%]{1}]] ]]
then
        echo Valid
else
        echo Invalid
fi
