#!/bin/bash
source smrtlink-6.0
srun dataset create --force --type SubreadSet --name sebastian --generateIndices sequeldata.subreadset.xml input.fofn
srun dataset create --force --type BarcodeSet --name barcodes --generateIndices singleBarcoding.barcodeset.xml barcodes8bps.fasta
srun pbsmrtpipe pipeline-id -o CCS_demultiplex  -e "eid_subread:sequeldata.subreadset.xml" -e "eid_barcode:singleBarcoding.barcodeset.xml" --preset-xml ./hpc_preset.xml --preset-xml ./ccs_preset.xml --debug pbsmrtpipe.pipelines.sa3_ds_ccs_barcode
