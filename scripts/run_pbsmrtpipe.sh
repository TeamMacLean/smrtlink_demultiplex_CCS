#!/bin/bash
source smrtlink-6.0
srun dataset create --type SubreadSet --force --name sebastian --generateIndices sequeldata.subreadset.xml input.fofn
srun dataset create --type BarcodeSet --force --name barcodes --generateIndices singleBarcoding.barcodeset.xml barcodes8bps.fasta
srun pbsmrtpipe pipeline-id pbsmrtpipe.pipelines.sa3_ds_barcode_ccs -o CCS_demultiplex  -e eid_subread:sequeldata.subreadset.xml -e eid_barcode:singleBarcoding.barcodeset.xml --preset-xml ./hpc_preset.xml --preset-xml ./ccs_preset.xml
