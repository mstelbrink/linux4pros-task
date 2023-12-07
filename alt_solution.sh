#!/bin/bash

for filename in *.jpg *.jpeg; do
	width=$(identify -format '%w\n' $filename)
	mv $filename "${width}_${filename}"
done

ls -l | sort -rn -k 9

exit 0
