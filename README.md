### README

This script uses smrtlink v5.0.1 to demultiplex pacbio subreads by sample specific barcode and generate CCS reads.

## how to run in HPC

sbatch -o demultiplex.log -J demultiplex --mem 10G ./scripts/run_pbsmrtpipe.sh
