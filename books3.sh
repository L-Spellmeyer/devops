#!/bin/bash
#Description: SHell script to cycle thorught available books and downloads counts
#from gutendex to make a log of the number of downloads for a given book on a current date
#the script requires the passing of parameters given as the book id seperated by a space
#eacho log is stored in a corresponding directory labled as the book_id.
#
#Author: LEvi SPellmeyer
#
#creation date: 4/9/2024

# Establish variable for URL
strURL="http://gutendex.com/books/?ids="


# Loop thorugh all paramereters and build URL with IDs
for strBookID in "$@";
do
strURL+="$strBookID,"
done

# Debug statement to verify URL is created as expected
#echo ${strURL}

# remove trialing comma from URL
strURL=${strURL::-1}

# Debug statement to verify removal of comma
#echo ${strURL}

#retrieve results from web service using curl then parse with jq to get the object
#key results
arrResults=$(curl ${strURL} | jq .results)
#Debug statement to verify results are what we believe
#echo ${arrResults}

# Establish variables for looping through the array of books
intIndex=0
#capturing the length or count of objects in the array
intLength=$(echo ${arrResults} | jq "length")
# Debug statement to verify length is correct
#echo ${intLength}


while [ $intIndex -lt $intLength ]; do
# Establish variables for dowload_count,id,title
strID=$(echo ${arrResults} | jq -r .[${intIndex}].id)
strDownloadCount=$(echo ${arrResults} | jq -r .[${intIndex}].download_count)
strTitle=$(echo ${arrResults} | jq -r .[${intIndex}].title)
#debug statements to verify results of variables
#echo ${strID}
#echo ${strDownloadCount}
#echo ${strTitle}

#modified strTitle to replace spaces with _
strTitle=$(echo ${strTitle} | sed 's/ /_/g')
#create new directory to hold new file
mkdir ${strID}
# Append new file with title as aname that contains date:download_count
echo $(date +"%Y-%m-%d"):${strDownloadCount} >> ${strID}/${strTitle}
#increment intINdex to prevent a loop
((intIndex++))
done



