cd /lustre/scratch/jmanthey/07_ethiopia_historical/par_gal/06_window_stats/windows

# combine the output for different analyses into a single file each
# first add a header for each file
grep 'pop1' NC_044211.2__100001__200000__stats.txt > ../window_heterozygosity.txt
grep 'pop1' NC_044211.2__100001__200000__stats.txt > ../window_titv.txt
grep 'pop1' NC_044211.2__100001__200000__stats.txt > ../window_Fst.txt

# add the relevant stats to each file
for i in $( ls *txt ); do grep 'heterozygosity' $i >> ../window_heterozygosity.txt; done
for i in $( ls *txt ); do grep 'titv' $i >> ../window_titv.txt; done
for i in $( ls *txt ); do grep 'Fst' $i >> ../window_Fst.txt; done

