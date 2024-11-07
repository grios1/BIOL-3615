# BIOL-3615
## Genomics &amp; Bioinformatics Fall 2024
hola mundo
This is meant to track my progress in the course project RNASeq analysis. 
This work will be completed in 3 stages: Quality Control, RNASeq Alignment, Differential Expression Analysis

## Quality Control
### 1. FASTQC_Prelim
Quality Control/FASTQC_Prelim
Working with the initial RNA sequence files WTB2_1.fq.gz, and WTB2_2.fq.gz, these are evaluated using the fastqc command. The interactive HTML files are attached inside the folder

### 2. Trimmomatic
Using the slurm script trimRNASeq3.SBATCH, the low-quality BP reads were eliminated. 

### 3. FASTQC_FINAL
The trimmed Paired-End files are analyzed for quality through FastQC, WTB2_1.trPE.fq.gz, and WTB2_2.trPE.fq.gz 

## File Alignment
Fastq > SAM > BAM
### Align
With the trimmed RNASeq files, the slurm scrip bowtie2script.SBATCH will allign the WTB2_1.trPE.fq.gz, and WTB2_2.trPE.fq.gz with the Canida Albicans reference genome found on the NCBI Database 
https://www.ncbi.nlm.nih.gov/datasets/genome/GCF_000182965.3/ 
Genome: GCF_000182965.3_ASM18296v3_rna.fna.gz  
Annotations: GCF_000182965.3_ASM18296v3_genomic.gff.gz  

This Step will produce the SAM file
