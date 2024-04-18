#!/bin/bash

#This is a simple Password generator

echo -e "\nWelcome! This program is used for generating secure password."
echo "It uses BASE64 encryption method."
Dev='Zahid Hasan'
echo -e "-----Developed by $Dev-----"

echo -e "\nPlease Enter the length of your password:"

read P_length

echo "Please wait! The system is generating 5 random complex password..."

echo -ne '#####                     (33%)\r'
sleep 1
echo -ne '#############             (66%)\r'
sleep 1
echo -ne '#######################   (100%)\r'
echo -ne '\n'

echo -e "\nChoose your password:"
for p in $(seq 1 5):
do
	openssl rand -base64 48 | cut -c1-$P_length
done


echo -e "\n\nProcess initiated Succesfully!\n"
