#/Users/amcshan3/opt/anaconda3/bin/python3#

# Written by Santrupti Nerli and Andrew McShan

# usage: python3 seq_identity_blosum_acm_san_edit.py

import re
import Bio
from Bio.SubsMat import MatrixInfo

def score_match(pair, matrix):
    if pair not in matrix:
        return matrix[(tuple(reversed(pair)))]
    else:
        return matrix[pair]

def score_pairwise(seq1, seq2, matrix, gap_s, gap_e):
    score = 0
    gap = False
    for i in range(len(seq1)):
        print (seq2, i)
        pair = (seq1[i], seq2[i])
        if not gap:
            if '-' in pair:
                gap = True
                score += gap_s
            else:
                score += score_match(pair, matrix)
        else:
            if '-' not in pair:
                gap = False
                score += score_match(pair, matrix)
            else:
                score += gap_e
    return score

# Provide clustalomega alignment file.
align_file = "MHC_pseudogroove.clustal"
# Provide name for the output file.
identity_file = "blosum62_identity_A0201.csv"

readFile = open(align_file, "r")
writeFile = open(identity_file, "w")

target_seq = {}
target_name = {}

i = 0
temp = -1
template_seq = ""
for line in readFile:
    if i == 10387:
        i = 0
    modified = re.sub(r"\s+", " ", line)
    pair = modified.split(" ")

    # Provide pattern for the template to align to.
    if ("HLA-A02:01" in line):
        temp = i
        template_seq = template_seq+pair[1]
    if i not in target_name:
        target_name[i] = pair[0]
    if i in target_seq:
        target_seq[i] = target_seq[i]+pair[1]
    else:
        target_seq[i] = pair[1]
    i += 1

blosum = MatrixInfo.blosum62
for t in target_seq:
    if target_seq[t].rstrip() != "":
        score = score_pairwise(template_seq, target_seq[t], blosum, 0, 0)
        #name = re.sub(target_name[t])
        name = target_name[t]
        if(temp == t):
            print(score)
        writeFile.write(name+","+str(score)+"\n")

writeFile.close()
readFile.close()
