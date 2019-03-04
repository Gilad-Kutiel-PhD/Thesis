#!/bin/bash
for f in $(find . -name "*.tex"); do
	if [ $(grep -c ${f#"./src/"} src/main.log) -ne 0 ]
	then
		:
	else
		rm $f
	fi
done
