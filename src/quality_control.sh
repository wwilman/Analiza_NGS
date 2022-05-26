#!/bin/bash

in="data/"
ng="SRR0645"
typ=".fastq.gz"

cd  $out
for i in _1 _2
	do
		for li in 45 46 47
			do 
				echo '------------------------------------------------'
				echo 'Quality Control:' $ng$li$typ
				echo '------------------------------------------------'

				fastqc $in$ng$li$i$typ

			done
	done

