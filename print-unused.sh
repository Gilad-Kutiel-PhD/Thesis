#!/bin/bash
for f in $(find src/content); do
	if [ $(grep -c ${f##*/} src/main.log) -ne 0 ]
	then
		:
	else
		echo ${f}
	fi
done
