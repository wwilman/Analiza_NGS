#!/bin/bash


echo '------------------------------------------------'
echo 'Variant calling with bcftools:' $li$typ
echo '------------------------------------------------'
		bcftools mpileup -Ou --fasta-ref reference_data/gen_ref.fna results/mapping/SRR064545_sort.bam /results/mapping/SRR064546_sort.bam results/mapping/SRR064547_sort.bam | bcftools call -vmO z - o all.vcf.gz > all.vcf.gz

