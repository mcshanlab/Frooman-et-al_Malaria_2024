#!/bin/bash

# Read the file containing the list of all class I human HLA alleles (A, B, C, E, G)
# then run netMHCpan for each

# EDIT THE FOLLOWING PATHS!!:
cat path-to-netMHCpan/netMHCpan-4.1/data/all_human_classI_alleles | while read line; do path-to-netMHCpan/netMHCpan-4.1/netMHCpan -a $line -p input.pep -l 9 -BA -xlsfile MalariaPeptides_all_alleles_BA.xls >> MalariaPeptides_all_alleles_BA.xls;done

