#!/bin/bash
if [ $# -ne 1 ] 
then
	echo "Usage: $0 <post name>"
	exit 1
fi

postfile=$(rake new_post["$1"]|cut -d":" -f2)
vi $postfile
