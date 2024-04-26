#! /bin/bash

echo "enter your first name: "
read strName


echo "Welcome $strName to your first adventure" > adventure.txt
echo "" >> adventure.txt
echo "">> adventure.txt


read -p "what character do you want to be? " strCharacter
echo $strName you are now a $strCharacter >> adventure.txt

echo "story complete go to adventure.txt to view"


