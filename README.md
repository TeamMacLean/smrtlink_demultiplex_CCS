### README

This script uses smrtlink v6.0 to demultiplex pacbio subreads by sample specific barcode and generate CCS reads on SLURM HPC environment.

## How to run in HPC

sbatch -o demultiplex.log -J demultiplex --mem 10G ./scripts/run_pbsmrtpipe.sh
