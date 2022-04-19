wc -c $1| awk '{print $1 " bytes"}'

wc -l < $1


wc -w < $1


awk '{print "Line No:" NR " - Count of Words: " NF}' $1

grep -wo '[[:alnum:]]\+' $1 | sort | uniq -cd | awk '{print $2 " : " $1}' 

