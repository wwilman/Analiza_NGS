#!/bin/bash
in="results/mapping/"

#annotations
for li in 5 6 7
	do 
		echo '------------------------------------------------'
		echo 'Stats for bam with samtools:' $li$typ
		echo '------------------------------------------------'

		samtools stats $in"SRR06454"$li"_sort.bam" > $in"stats_4"$li".stats"
		plot-bamstats -p $in"graph_4"$li $in"stats_4"$li".stats"

	done
	
