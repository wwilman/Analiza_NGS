#!/bin/bash
in="data/"
out="results/mapping/"
ref="reference_data/gen_ref.fna"
ng="SRR0645"
typ=".fastq.gz"


for li in 45 46 47
	do 
		echo '------------------------------------------------'
		echo 'Mapping on file:' $ng$li$type
		echo '------------------------------------------------'

		bwa mem $ref $in$ng$li'_1'$typ $in$ng$li'_2'$typ | samtools view -b > $out$ng$li'.bam'
		samtools flagstat $out$ng$li'.bam' > $out$ng$li'_flagstat.txt'

	done
	
