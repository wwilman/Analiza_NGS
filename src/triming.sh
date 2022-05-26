#!/bin/bash
in="data/"
out="trimming/"
ng="SRR0645"
typ=".fastq.gz"
p="paried"
up="unparied"
slid='4:20'
ml='20'

for li in 45 46 47
	do 
		echo '------------------------------------------------'
		echo 'Trimming with:' $slid $ml 'on file:' $ng$li$type
		echo '------------------------------------------------'

		trimmomatic PE -phred33 $in$ng$li'_1'$typ $in$ng$li'_2'$typ $out$ng$li'_1_'$p$typ $out$ng$li'_1_'$up$typ $out$ng$li'_2_'$p$typ $out$ng$li'_2_'$up$typ SLIDINGWINDOW:$slid MINLEN:$ml

	done
