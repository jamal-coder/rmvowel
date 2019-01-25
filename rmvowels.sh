#!/bin/bash
clear

read -p "Enter string : " string

length=${#string}
echo -e "\n\n"
for ((count=0; count<length; count++)) 
do
	char=${string:$count:1}
	if [[ $char = ' ' ]]; then
		echo -n "    "
	fi
	case $char in
		[Aa]|[Ee]|[Ii]|[Oo]|[Uu]) 	echo -n '_'
					;;
		*)			echo -n $char
					;;
	esac
done
echo -e "\n\n"