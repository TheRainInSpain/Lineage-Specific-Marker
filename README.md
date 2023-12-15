# Lineage-Specific-Marker
## filter the reads 
run `filter_by_qscore.sh` to filter the reads by qscore and then run `filter_by_length.ipynb` to filter the sequences by length.
## cluster and build the consensus
run `run_vsearch.sh`, this script will run vsearch clustering algorithm on each `fasta` file and output three files, `.uc` file stores the cluster information for each sequence, two `.fasta` files store the centroid and consensus sequences for each cluster
## summarize the cluster information
run `write_cluster_to_excel.ipynb`, this will summarize of cluster information and generate the `.xlsx` files. There are three columns for each `.xlsx` file, which stored the centroid sequence and consensus sequence of each cluster
## extract the desired consensus
After summarize the cluster information, it would be able to see the large clusters that contain high percentage of sequencces. Build a `txt` file which stores the id of selected clusters by ascending order and the different groups of ids should also be stored by the ascending order of files. Then run `write_consensus_by_cluster.ipynb` to get the consensus for each sample.
## geneious analysis
After get the consensus sequences, import them to the geneious software and then reorient the consensus sequences, align them and build the phylogenetic trees
