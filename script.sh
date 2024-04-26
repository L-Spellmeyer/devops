#!/bin/bash
#author: Levi SPellmeyer
#Date: 4/18/2024
#Description: Takes in log files and formats files with information from the different logs. creates files with all logs of same type

#used git clone git@github.com:ttu-bburchfield/devopslogging then used cd and cat to acces the needed information

mkdir logs
cd logs

strLogType=$1
strDate=$(date '+%d-%m-%Y')
#debug statement to check date setting
#echo ${strDate}

#url that is used to access all the different json log objects
strBaseUrl=https://www.swollenhippo.com/ITSecurity/criticalLogs.php


#this get the number of error logs in the .json array
intLength=$(curl ${strBaseUrl} | jq 'length')
#debug statemtnt to make sure above length variable declaration worked
#echo ${intLength}

#sets intCurrent to 0 to set up a while loop
intCurrent=0

#while loop iterates through every object taking in the information into variables and creating respective file for that error
while [ ${intCurrent} -lt ${intLength} ]; do
#echo ${intCurrent}

strLogType=$(curl ${strBaseUrl} | jq .[${current}].logType)
strServer=$(curl ${strBaseUrl} | jq .[${current}].server)
strContents=$(curl ${strBaseUrl} | jq .[${current}].contents)
#debugging statements to out put the values stored in the 3 above variables that should correspond to each error json object
#echo ${strLogType}
#echo ${strServer}
#echo ${strContents}

#the purpose of this if statemt is to check if the  log being looked at matches the parameter log type that was sent in
#if it does enot match then a file wont be creatted and  intCurrent will incrment by one without doing any other acitons
if ${strLogType} -eq  ${strLogType}; then

#creates a name for the log files using data pulled from json objects
#strLogFile=${strDate}${strLogType}.log
#information pertaining to the error is then appended to the file name that was just created in above line
echo "${strLogType},${strServer},${strContents}" >> ${strLogFile}

fi

#increments the current index to prevent an infinite loop from occuring
((intCurrent++))
done
