#!/bin/bash

vsearch_output_folder=path_of_vsearch_output_folder
mkdir -p $vsearch_output_folder
mkdir -p $vsearch_output_folder/uc_files
mkdir -p $vsearch_output_folder/consensus_fasta
mkdir -p $vsearch_output_folder/centroids_fasta

cd filtered_reads_folder
for fasta in *.fasta;
do
    fn=${fasta%.fasta}
    echo "clustering_id85 $fasta..."
    /home/u7343217/vsearch_check/./vsearch --cluster_size $fasta --id 0.85 --iddef 4 --centroids $vsearch_output_folder/centroids_fasta/$fn.fasta --uc $vsearch_output_folder/uc_files/$fn.uc --consout $vsearch_output_folder/consensus_fasta/$fn.fasta
    
done

