#! /bin/bash

curl http://gutendex.com/books/?ids= | jq >> books.json

