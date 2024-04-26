#!/bin/bash
# Date: 4//11/2024
# Author: Levi Spellmeyer
# Description: this takes in an error log in wich it creates an individual file and directory for each error in the array sent to this script


# variable to take in paramters sent to script for the operators name
strFirstName=$1
strLastName=$2
#Test to ensure that operator first and last name is taken in as a parameter
#echo ${strFirstName}
#echo ${strLastName}

arrResults=$(curl https://simplefarm.thesimplehomestead.com/errorlogs.php | jq)
echo ${arrResults}
intLength=$(echo ${arrResults} | jq "length")
echo ${intLength}

#takes in the error codes by parsing the error log
#codes=$(curl https://simplefarm.thesimplehomestead.com/errorlogs.php | jq .[]."code")
#checks that the codes are seperated by printing out each eorror code
#echo ${codes}

#checks for the number of codes in the error logs
#length=$(echo ${codes} | jq "length")
#prints out the length or the total number of logs in the array of logs
#echo ${length}

#sets current to 0 so that a whle loop can be made
#current=0

# iterates same amount of times as there are codes creating directories named after those codes
#while [ ${current} -lt ${length} ]; do

#Variables for the different attributes taken form each error log
#strCode=$(echo ${arrResults} | jq -r .[${current}].code)
# tests to ensure that stCode was sucessfully defined
#echo ${strCode}

#strMessage=$(echo ${arrResults} | jq -r .[${current}].message)
#echo ${strMessage}

#strFirst=(echo ${arrResults} | jq -r .[${current}].reportingfirstname)
#echo ${strFirst}

#strLast=(echo ${arrResults} | jq -r .[${current}].reportinglastname)
#echo ${strLast}

#strSystemip=(echo ${arrResults} | jq -r .[${current}].systemip)
#echo ${strSystemip}


#creates a direectory with the name of code-"code error num"
#dirName ="Code-${strCode}"
#strTitle=$(date +"%d-%m-%Y.log)

#creates a directory with the value in dirName
#mkdir ${dirName}
#outputs information to file in the dirname direectory
#output will be the operators name
#echo "Operator Name: ${$1 $2} << ${dirName}/${strTitle}
#outputs the error message followed by who made the report with last name followe by first name
#echo ${strMessage}. "reported by: ${strLast}, ${strFirst}" << ${dirName}/${strtitle}

#increment current to prevent a loop
#((current++))

#done

