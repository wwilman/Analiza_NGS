# NGS analysis - SNP variant detection

### Data
Data: https://www.ncbi.nlm.nih.gov/sra/SRX025959[accn]
Submitted by: University of Michigan
Study: Pooled linkage analysis for discovery of Saccharomyces cerevisiae functional mutations by whole genome sequencing
Abstract:
In order to identify the yeast genes that are mutated in vac6 and vac22 mutants, each mutant strain was backcrossed against a wild-type yeast strain. Phenotypically wild-type and mutant segregants were then pooled and subjected to mate-pair sequencing, i.e. sequencing was applied to one wild-type and one mutant pool for each strain (four libraries in total). The data were mined for mutations evident in the sequence that were present only in the mutant, but not the wild-type, pool for each strain.
Sample: Yeast vac22, wild-type segregant pool
Organism: Saccharomyces cerevisiae
Name: vac22 wt
Instrument: Illumina Genome Analyzer
Strategy: WGS
Source: GENOMIC
Selection: RANDOM
Layout: PAIRED

### Steps of analysis:
1. Acquiring raw data - SRA repositorium
2. Quality control - fastq
3. Trimming - trimmomatic
4. Quality control - fastq
5. Comparison to the reference genome - bwa
6. Detection of polymorphisms - bcftools
7. Biological sense and analysis of results - vep, R, Python, bcftools

### Steps in detail description:
1. Acquiring raw data 
Using fastq-dump I downladed 1,000,000 readings from each sample taking into consideration to the type and properties of the data. I downloaded 3 fastq files that can be found in data folder.

2. Quality control
With usage of fastqc I checked the quality of each sample - each one was had pretty good stats, only per base sequence quality could be better so I decided to try to trimm it. As output file, htmls were produced, that can be found in data folder.

3. Trimming
Using Trimmomatic with parameters: SlIDINGWINDOW (4:20) and MINLEN (20) I decided to cleanse the sequences - contrary to my expectations, Trimmomatic did not found any sequences to trimm with this parameteres. I have chosen this two, because they are not blind cutting the sequences, but base the assessment on parameters. As output file, fastqs were produce, that can be found in results/trimming folder.

4. Quality control
With usage of fastqc I checked the quality of each sample again - it did not change, cause trimmomatic haven't trimmed them.As output file, htmls were produced, that can be found in results/trimming folder.

5. Comparison to the reference genome
I have downloaded the reference genome from ENSEMBL, concated it and finally indexed with bwa. Next I mapped the seqences to reference genome with bwa and checked the stats with samtools. In each sample, there was more than 94% of sequence mapped - so I considered the mapping to be properly performed. As output file, bams and stats files were produced, that can be found in results/mapping. The reference genome can be found in reference_data folder.

6. Detection of polymorphisms
For polymorphisms detection I decided to use bcftools - I decided that primary final file will have all records. As output file, vcf was produced, that can be found in results/variant_detection_and_annotation folder.

7. Biological sense and analysis of results
For the final step I decided to try multiple different methods of analysis:
* vep - for ENSEMBL-based anotations, that can be found in results/vep folder.
* SNPeff - for SNPeff R64-1-1.105 database annotation, that can be found in results/variant_detection_and_annotation folder.
* vcftoolz - comparison between samples, that can be found in  results/final_analysis_and_visualisation
* vcfR - statistical chromosomal analysis,  that can be found in  results/final_analysis_and_visualisation
* Python - general vcf file analysis,  that can be found in src in JupyterNotebook file.
Each way gave a little different insight to the data and provided multiple information.
What is very weird that vcftools has not found even one common SNP, but all of the positions agreed. It indicates that there is an error in analysis, but in that case unresolved.

