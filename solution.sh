#!/bin/bas
fileAmount=0
for filename in *.jpg *.jpeg; do
	((fileAmount++))
	newFileName=$(identify -format '%w_%i\n' $filename)
       	identify -format '%w_%i\n' $filename >> files.txt
	mv $filename $newFileName
done

sort -rn files.txt > sorted.txt

i=0
while read line; do
	mv $line "${i}_${line}"
	((i++))
done < sorted.txt

rm files.txt sorted.txt

exit 0
