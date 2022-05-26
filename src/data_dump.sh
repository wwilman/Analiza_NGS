#!/bin/bash

in="data/"
ng="SRR0645"
typ=".fastq.gz"

cd $in

for li in 45 46 47
	do 
		echo '------------------------------------------------'
		echo 'Data dump:' $in$ng$li
		echo '------------------------------------------------'

		fastq-dump -X 1000000 --gzip --split-files $ng$li

	done
