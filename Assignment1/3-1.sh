grep -wo '[[:alnum:]]\+' $1 | sort | uniq -cd | awk '{print $2 " : " $1}' 

