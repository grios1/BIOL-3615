#!/bin/bash
#SBATCH --job-name=trimm_RNASEQ.SBATCH  --output=z01.%x
#SBATCH --mail-type=END,FAIL --mail-user=gar75@georgetown.edu
#SBATCH --nodes=1 --ntasks=1 --cpus-per-task=1 --time=72:00:00
#SBATCH --mem=4G


##------------------JOB Enviroment-----------------------------##
shopt -s expand_aliases
module load trimmomatic


##----------------Script Description--------------------------##
#RNASeq Project

#LLUMINACLIP:/<path_to>/TruSeq3-PE.fa:2:30:10
#HEADCROP:15
#TRAILING:20
#SLIDINGWINDOW:4:15
#MINLEN:75

#COMMANDS
#input_R1.fq.gz \
#input_R2.fq.gz \
#output_R1_pairedend.fq.gz output_R1_singleend.fq.gz \
#output_R2_pairedend.fq.gz output_R2_singleend.fq.gz \
#Examples of how to follow
#LEADING:10 \
#TRAILING:10 \
#ILLUMINACLIP:TruSeq3-PE.fa:2:30:10 \
#SLIDINGWINDOW:4:15 \
#MINLEN:75


##---------------Define Variable destinaitons------------------##
input_R1=/home/gar75/rnaseq/prelimfastqc/WTB2_1.fq.gz
input_R2=/home/gar75/rnaseq/prelimfastqc/WTB2_2.fq.gz
output_R1_trPE=/home/gar75/rnaseq/trimoutput/WTB2_1.trPE.fq.gz
output_R1_trSE=/home/gar75/rnaseq/trimoutput/WTB2_1.trSE.fq.gz
output_R2_trPE=/home/gar75/rnaseq/trimoutput/WTB2_2.trPE.fq.gz
output_R2_trSE=/home/gar75/rnaseq/trimoutput/WTB2_2.trSE.fq.gz

##---------------Script--------------------------------------##

trimmomatic PE \
$input_R1 \
$input_R2 \
$output_R1_trPE $output_R1_trSE \
$output_R2_trPE $output_R2_trSE \
ILLUMINACLIP:TruSeq3-PE.fa:2:30:10 \
HEADCROP:15 \
TRAILING:20 \
SLIDINGWINDOW:4:15 \
MINLEN:75
module unload trimmomatic

