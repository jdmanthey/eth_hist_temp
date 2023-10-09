cd 
cd snpEff



nano ../../snpEff.config
### add the following lines to the config file at the beginning

"
data.dir = ~/snpEff/data/

# finch
finch.genome : finch
finch.reference	: ~/snpEff/data/finch
"

mkdir finch
cd finch

curl -OJX GET "https://api.ncbi.nlm.nih.gov/datasets/v2alpha/genome/accession/GCF_003957565.2/download?include_annotation_type=GENOME_FASTA,GENOME_GFF,RNA_FASTA,CDS_FASTA,PROT_FASTA,SEQUENCE_REPORT&filename=GCF_003957565.2.zip" -H "Accept: application/zip"

mv ncbi_dataset/data/GCF_003957565.2/GCF_003957565.2_bTaeGut1.4.pri_genomic.fna ./sequences.fa
mv ncbi_dataset/data/GCF_003957565.2/genomic.gff ./genes.gff
mv ncbi_dataset/data/GCF_003957565.2/protein.faa ./protein.fa

# then build the database
cd ../..
java -jar snpEff.jar build -gff3 -v finch -noCheckCds -noCheckProtein

