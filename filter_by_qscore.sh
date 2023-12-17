#!/bin/bash
# this script is to filter the reads by Qscore, ony sequence with minimum Qscore 15 would be reserved
source /opt/conda/etc/profile.d/conda.sh
conda activate install_environment
raw_read_path=the_raw_read_folder_path
output_read_path=the_output_folder_path
cd $raw_read_path
for fastq in *.fastq;
do
        fn=${fastq%.fastq}
        echo "Filtering $fastq..."
        NanoFilt -q 15 $fastq > $output_read_path/${fn}.q15.fastq
done

conda deactivate

