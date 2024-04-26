#! /bin/bash

date +"%Y %b %m" >> $1
echo "new transaction" >> $1
read -p "what is your name: " name

if [ $name = "Levi" ]; then
echo "success"
echo "provided name = Levi" >> $1
else
echo "no good"
echo "provided name as $name" >> $1
fi

read -p "choose a number: " intnum
echo "number provided as $intnum" >> $1
if [ $intnum -gt "5" ]; then
echo "greater than 5" | tee testlog.log
elif [ $intnum -lt 5 ]; then
echo "less than or equal to 5"
else
echo "equals Five"
fi
