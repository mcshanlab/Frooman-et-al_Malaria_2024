#!/bin/bash
# CSP_319-328
awk '/YLNKIQNSL/&&/*/&&/:/ {print $2, $15, $16, $18}' *all_alleles*.xls > CSP319328_results_all_alleles.txt
awk '/YLNKIQNSL/&&/*/&&/:/&&/SB|WB/ {print $2, $15, $16, $18}' *all_alleles*.xls > CSP319328_results_all_alleles_SB_WB_only.txt

# LSA3_78-87
awk '/YVDKKLNKL/&&/*/&&/:/ {print $2, $15, $16, $18}' *all_alleles*.xls > LSA3_7887_results_all_alleles.txt
awk '/YVDKKLNKL/&&/*/&&/:/&&/SB|WB/ {print $2, $15, $16, $18}' *all_alleles*.xls > LSA3_7887_results_all_alleles_SB_WB_only.txt

# LSA3_1229-1238
awk '/KLGERVESL/&&/*/&&/:/ {print $2, $15, $16, $18}' *all_alleles*.xls > LSA3_12291238_results_all_alleles.txt
awk '/KLGERVESL/&&/*/&&/:/&&/SB|WB/ {print $2, $15, $16, $18}' *all_alleles*.xls > LSA3_12291238_results_all_alleles_SB_WB_only.txt

# MSP1_511-520
awk '/ELLEKFYEM/&&/*/&&/:/ {print $2, $15, $16, $18}' *all_alleles*.xls > MSP1_511520_results_all_alleles.txt
awk '/ELLEKFYEM/&&/*/&&/:/&&/SB|WB/ {print $2, $15, $16, $18}' *all_alleles*.xls > MSP1_511520_results_all_alleles_SB_WB_only.txt

# MSP1_643-652
awk '/LLIKKIEDL/&&/*/&&/:/ {print $2, $15, $16, $18}' *all_alleles*.xls > MSP1_643652_results_all_alleles.txt
awk '/LLIKKIEDL/&&/*/&&/:/&&/SB|WB/ {print $2, $15, $16, $18}' *all_alleles*.xls > MSP1_643652_results_all_alleles_SB_WB_only.txt

# MSP1_823-832
awk '/SMDQKLLEV/&&/*/&&/:/ {print $2, $15, $16, $18}' *all_alleles*.xls > MSP1_823832_results_all_alleles.txt
awk '/SMDQKLLEV/&&/*/&&/:/&&/SB|WB/ {print $2, $15, $16, $18}' *all_alleles*.xls > MSP1_823832_results_all_alleles_SB_WB_only.txt

# MSP1_880-889
awk '/YQKEMIYYL/&&/*/&&/:/ {print $2, $15, $16, $18}' *all_alleles*.xls > MSP1_880889_results_all_alleles.txt
awk '/YQKEMIYYL/&&/*/&&/:/&&/SB|WB/ {print $2, $15, $16, $18}' *all_alleles*.xls > MSP1_880889_results_all_alleles_SB_WB_only.txt

# SSFP_93-102
awk '/NMLDKKTTV/&&/*/&&/:/ {print $2, $15, $16, $18}' *all_alleles*.xls > SSFP_93102_results_all_alleles.txt
awk '/NMLDKKTTV/&&/*/&&/:/&&/SB|WB/ {print $2, $15, $16, $18}' *all_alleles*.xls > SSFP_93102_results_all_alleles_SB_WB_only.txt
