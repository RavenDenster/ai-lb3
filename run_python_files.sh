#!/bin/bash

set -e
rm -rf results.txt
touch results.txt

for file in ./*.py; do
	echo "RUNNING $file"
	python3 $file
done
