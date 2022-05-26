library(vcfR)
vcf <- read.vcfR( "results/variant_detection_and_annotations/all.vcf", verbose = FALSE )
dna <- ape::read.dna("reference_data/gen_ref.fna", format = "fasta")
gff <- read.table("reference_data/Saccharomyces_cerevisiae.R64-1-1.106.gff3", sep="\t", quote="")

library(vcfR)
chrom <- create.chromR(name='Supercontig', vcf=vcf, seq=dna, ann=gff)

plot(chrom)

chrom <- masker(chrom, min_QUAL = 1, min_DP = 3, max_DP = 10000, min_MQ = 59.9,  max_MQ = 60.1)
plot(chrom)

chrom <- proc.chromR(chrom, verbose=TRUE)

plot(chrom)

chromoqc(chrom, dp.alpha=20)

chromoqc(chrom, xlim=c(5e+05, 6e+05))
