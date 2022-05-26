#!/bin/bash
in="results/variant_detection_and_annotations/"
out="results/final_analysis_and_visualisation/"
typ=".vcf"
final=".txt"

for li in 45 46 47 all
	do 
		echo '------------------------------------------------'
		echo 'bcftools stats for vcf:' $li$typ
		echo '------------------------------------------------'

	bcftools query \
	    --format '%CHROM\t%POS\t%REF\t%FIRST_ALT\t%QUAL\t%TYPE\t[%GT]\n' \
	    -i 'CHROM=="chr1" && POS>100000 && POS <120000 && QUAL>30 && GT="1|0" && TYPE!="snp"' \
	    $in$li$typ 2>$out$li$final | head


	done
	
