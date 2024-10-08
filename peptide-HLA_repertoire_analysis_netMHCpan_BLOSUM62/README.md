# Allele_analysis



## Preparation
1. install netMHCpan from: https://services.healthtech.dtu.dk/services/NetMHCpan-4.1/ 
2. Put the file `step1_run_netmhcpan/all_human_class1_alleles` in the path : `<path-to-netMHCpan>/netMHCpan-4.1/data/`


## Step 1: Get BA rankings with netmhcpan
1. go in the directory: \
`cd step1_run_netmhcpan` 
2. (optional) if you are running a different set of peptides, prepare the peptide sequences in fasta format as `input.pep`
3. edit and run the scripts: \
In `run_all_alleles.sh`, edit "path-to-netMHCpan" accordingly to the path pointing to the netMHCpan you installed. \
Run the script: `./run_all_alleles.sh` \
(optional) if you are running a different set of peptides, edit `get_peptides.sh` with your peptide names and sequences. \
Run the script: `./get_peptides.sh`\
-> This will produce a csv file of the Binding Affinity Rankings for all alleles for each peptide. \
Column 1 is the name of the allele. \
Column 2 is the BA ranking. 


## Step 2: Get BLOSUM62 scores
1. go in the directory: \
`cd step2_BLOSUM62_vs_BA_plots` 
2. (optional) edit the script: \
 if you are running BLOSUM62 scores with a different reference allele, edit `seq_identity_blosum_acm_san_edit.py`. The current script is default to A0201 as the reference. \
edit `identity_file = "blosum62_identity_A0201.csv"` in line 38 to your desired output file name.\
edit "HLA-A02:01" in line 56 to the reference allele name you want. 

3. Run the script: \
`python seq_identity_blosum_acm_san_edit.py`\
-> The expected output is a CSV file (for example: `blosum62_identity_A0201.csv`). \
Column 1 is the name of the allele. \
Column 2 is the BLOSUM62 score. 



## Other data:
The file `data/99perc_coverage_human_classI_alleles` provides a list of classI alleles that covers 99% population. This can be used to filter the results.