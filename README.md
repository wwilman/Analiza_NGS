# Project - NGS analysis and SNP variant detection
### Structure 
```bash
├── data
├── RAPORT.md
├── README.md
├── reference_data
├── results
│   ├── final_analysis_and_visualisation
│   ├── mapping
│   ├── trimming
│   ├── variant_detection_and_annotations
│   └── vep
└── src
```
### Description
## data
```bash
├── data
│   ├── SRR064545_1_fastqc.html
│   ├── SRR064545_1_fastqc.zip
│   ├── SRR064545_1.fastq.gz
│   ├── SRR064545_2_fastqc.html
│   ├── SRR064545_2_fastqc.zip
│   ├── SRR064545_2.fastq.gz
│   ├── SRR064546_1_fastqc.html
│   ├── SRR064546_1_fastqc.zip
│   ├── SRR064546_1.fastq.gz
│   ├── SRR064546_2_fastqc.html
│   ├── SRR064546_2_fastqc.zip
│   ├── SRR064546_2.fastq.gz
│   ├── SRR064547_1_fastqc.html
│   ├── SRR064547_1_fastqc.zip
│   ├── SRR064547_1.fastq.gz
│   ├── SRR064547_2_fastqc.html
│   ├── SRR064547_2_fastqc.zip
│   └── SRR064547_2.fastq.gz
```
The data cataloge contains all of the primary data(*.gz) from SRA project and their quality control files based on fastqc(*.html, *.zip).

## reference_data
```bash
├── reference_data
│   ├── data.gff3
│   ├── gen_ref.fna
│   ├── gen_ref.fna.amb
│   ├── gen_ref.fna.ann
│   ├── gen_ref.fna.bwt
│   ├── gen_ref.fna.fai
│   ├── gen_ref.fna.pac
│   ├── gen_ref.fna.sa
│   ├── Saccharomyces_cerevisiae.R64-1-1.106.gff3
│   ├── Saccharomyces_cerevisiae.R64-1-1.dna.chromosome.I.fa.gz
│   ├── Saccharomyces_cerevisiae.R64-1-1.dna.chromosome.II.fa.gz
│   ├── Saccharomyces_cerevisiae.R64-1-1.dna.chromosome.III.fa.gz
│   ├── Saccharomyces_cerevisiae.R64-1-1.dna.chromosome.IV.fa.gz
│   ├── Saccharomyces_cerevisiae.R64-1-1.dna.chromosome.IX.fa.gz
│   ├── Saccharomyces_cerevisiae.R64-1-1.dna.chromosome.Mito.fa.gz
│   ├── Saccharomyces_cerevisiae.R64-1-1.dna.chromosome.V.fa.gz
│   ├── Saccharomyces_cerevisiae.R64-1-1.dna.chromosome.VI.fa.gz
│   ├── Saccharomyces_cerevisiae.R64-1-1.dna.chromosome.VII.fa.gz
│   ├── Saccharomyces_cerevisiae.R64-1-1.dna.chromosome.VIII.fa.gz
│   ├── Saccharomyces_cerevisiae.R64-1-1.dna.chromosome.X.fa.gz
│   ├── Saccharomyces_cerevisiae.R64-1-1.dna.chromosome.XI.fa.gz
│   ├── Saccharomyces_cerevisiae.R64-1-1.dna.chromosome.XII.fa.gz
│   ├── Saccharomyces_cerevisiae.R64-1-1.dna.chromosome.XIII.fa.gz
│   ├── Saccharomyces_cerevisiae.R64-1-1.dna.chromosome.XIV.fa.gz
│   ├── Saccharomyces_cerevisiae.R64-1-1.dna.chromosome.XV.fa.gz
│   └── Saccharomyces_cerevisiae.R64-1-1.dna.chromosome.XVI.fa.gz
```
The reference_data contains all of the ENSEMBL referenece genome data (*.gz, *.gff3) and indexed by bowtie (gen_ref*)

## results
```bash
results
│   ├── final_analysis_and_visualisation
│   │   ├── R
│   │   │   ├── chromqc.png
│   │   │   ├── masker.png
│   │   │   ├── proc.png
│   │   │   └── supercontig.png
│   │   └── vcftoolz
│   │       ├── 45.png
│   │       ├── 46.png
│   │       ├── 47.png
│   │       ├── all.tsv
│   │       ├── count.txt
│   │       ├── plots.png
│   │       ├── summary.txt
│   │       ├── venn2.positions.pdf
│   │       ├── venn2.snps.pdf
│   │       └── venn3.pdf
│   ├── mapping
│   │   ├── graph_45-quals.gp
│   │   ├── graph_46-quals.gp
│   │   ├── graph_47-quals.gp
│   │   ├── SRR064545.bam
│   │   ├── SRR064545_flagstat.txt
│   │   ├── SRR064545_sort.bam
│   │   ├── SRR064546.bam
│   │   ├── SRR064546_flagstat.txt
│   │   ├── SRR064546_sort.bam
│   │   ├── SRR064547.bam
│   │   ├── SRR064547_flagstat.txt
│   │   ├── SRR064547_sort.bam
│   │   ├── stats_45.stats
│   │   ├── stats_46.stats
│   │   └── stats_47.stats
│   ├── trimming
│   │   ├── SRR064545_1_paried.fastq.gz
│   │   ├── SRR064545_1_unparied.fastq.gz
│   │   ├── SRR064545_2_paried.fastq.gz
│   │   ├── SRR064545_2_unparied.fastq.gz
│   │   ├── SRR064546_1_paried.fastq.gz
│   │   ├── SRR064546_1_unparied.fastq.gz
│   │   ├── SRR064546_2_paried.fastq.gz
│   │   ├── SRR064546_2_unparied.fastq.gz
│   │   ├── SRR064547_1_paried.fastq.gz
│   │   ├── SRR064547_1_unparied.fastq.gz
│   │   ├── SRR064547_2_paried.fastq.gz
│   │   └── SRR064547_2_unparied.fastq.gz
│   ├── variant_detection_and_annotations
│   │   ├── 45_ann.genes.txt
│   │   ├── 45_ann.html
│   │   ├── 45_ann.vcf
│   │   ├── 45.vcf
│   │   ├── 46_ann.genes.txt
│   │   ├── 46_ann.html
│   │   ├── 46_ann.vcf
│   │   ├── 46.vcf
│   │   ├── 47_ann.genes.txt
│   │   ├── 47_ann.html
│   │   ├── 47_ann.vcf
│   │   ├── 47.vcf
│   │   ├── all_ann.genes.txt
│   │   ├── all_ann.html
│   │   ├── all_ann.vcf
│   │   ├── all.genes.txt
│   │   ├── all.html
│   │   └── all.vcf
│   └── vep
│       ├── 45.txt
│       ├── 45.vcf
│       ├── 45.vep.txt
│       ├── 46.txt
│       ├── 46.vcf
│       ├── 46.vep.txt
│       ├── 47.txt
│       ├── 47.vcf
│       ├── 47.vep.txt
│       ├── all.txt
│       ├── all.vcf
│       └── all_vep.txt
```
The results folder contains all of the result files from all of the steps of analysis. Each subfolder is named after the step or used program. Accordingly in:
* trimming - fastq after trimming (*.gz)
* mapping - after mapping bam files and stats files based on them
* variant_detection_and_annotations - variant detection results (*.vcf), annotation by snpEff results (*_ann.*, *html)
* vep - vep annotation results

## src
```bash
└── src
    ├── annotation.sh
    ├── bam_stats.sh
    ├── bcftools_analysis.sh
    ├── data_dump.sh
    ├── mapping.sh
    ├── quality_control.sh
    ├── refgen_access.sh
    ├── triming.sh
    ├── Variant_analysis.ipynb
    ├── variant_call.sh
    └── visaulization_vcfR.R
```
All used scripts:
* annotation.sh - annotation of variants with use of snpEff
* bam_stats.sh - stats for bams (data after mapping and sorting)
* bcftools_analysis.sh - general stats for final vcf
* data_dump.sh - download of SRA samples
* mapping.sh - mapping samples to reference genome with bwa
* quality_control.sh - quality control with fastqc
* refgen_access.sh - downloading reference genome from ENSEMBL
* trimming.sh - quality upgrade with Trimmomatic
* Variant_analysis.ipynb - final vcf and annotated vcf analysis with Python
* variant_call.sh - variant detection with bcftools
* visualization_vcfR.R - R chromosomal visualization
vcftoolz was not included in scripts, because it was easy checked by hand.
