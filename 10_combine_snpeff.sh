grep "^#C" NC_045028.1.ann.vcf > Parophasma_cds_snpeff.vcf
for i in $( ls *ann2* ); do grep -v "^#" $i >> Parophasma_cds_snpeff.vcf; done

# remove sites with warnings from snpEff
grep -v "WARN" Parophasma_cds_snpeff.vcf > Parophasma_cds_snpeff2.vcf

# remove the "#" from the header line for reading into R





