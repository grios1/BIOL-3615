#!/bin/bash
#SBATCH --job-name=trimm_scen3.SBATCH  --output=z01.%x
#SBATCH --mail-type=END,FAIL --mail-user=gar75@georgetown.edu
#SBATCH --nodes=1 --ntasks=1 --cpus-per-task=1 --time=72:00:00
#SBATCH --mem=4G


##------------------JOB Enviroment-----------------------------##
shopt -s expand_aliases
module load trimmomatic


##----------------Script Description--------------------------##
#HW 3 Scenerio 1

#Scenario1: LEADING:10, TRAILING:10, SLIDINGWINDOW:4:15, MINLEN:75

#COMMANDS
#input_R1.fq.gz \
#input_R2.fq.gz \
#output_R1_pairedend.fq.gz output_R1_singleend.fq.gz \
#output_R2_pairedend.fq.gz output_R2_singleend.fq.gz \
#LEADING:10 \
#TRAILING:10 \
#ILLUMINACLIP:TruSeq3-PE.fa:2:30:10 \
#SLIDINGWINDOW:4:15 \
#MINLEN:75


##---------------Define Variable destinaitons------------------##
adapters=/home/gar75/trimmomaticwork/TruSeq3-PE.fa
input_R1=/home/gar75/trimmomaticwork/fastqc_input/EC-12_R1_001.fastq.gz
input_R2=/home/gar75/trimmomaticwork/fastqc_input/EC-12_R2_001.fastq.gz
output_R1_PE=/home/gar75/trimmomaticwork/fastqc_output/EC-12_R1_001.trmPE.fq.gz
output_R1_SE=/home/gar75/trimmomaticwork/fastqc_output/EC-12_R1_001.trmSE.fq.gz
output_R2_PE=/home/gar75/trimmomaticwork/fastqc_output/EC-12_R2_001.trmPE.fq.gz
output_R2_SE=/home/gar75/trimmomaticwork/fastqc_output/EC-12_R2_001.trmSE.fq.gz

##---------------Script--------------------------------------##

trimmomatic PE \
$input_R1 \
$input_R2 \
$output_R1_PE $output_R1_SE \
$output_R2_PE $output_R2_SE \
LEADING:10 \
TRAILING:10 \
ILLUMINACLIP:TruSeq3-PE.fa:2:30:1 \
SLIDINGWINDOW:4:15 \
MINLEN:75

module unload trimmomatic

