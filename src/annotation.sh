#!/bin/bash
in="results/variant_detection_and_annotations/"
final="_ann.vcf"
html="_ann.html"
typ=".vcf"

#download S.cerevise database
java -jar snpEff.jar download -v R64-1-1.105

#annotations
for li in 45 46 47 all
	do 
		echo '------------------------------------------------'
		echo 'Annotation with SNPEff:' $li$typ
		echo '------------------------------------------------'

		java -Xmx8g -jar snpEff.jar -stats $in$li$html R64-1-1.105 $in$li$typ > $in$li$final

	done
	
