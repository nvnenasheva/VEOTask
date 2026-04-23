# Nanopore Metagenomic Assembly Pipeline

Analysis of Nanopore long-read sequencing data (sample 1_024_O).  
Identified as a viral metagenome dominated by Vibrio and Pseudomonas bacteriophages.

## Pipeline overview


Raw reads → QC → Filtering → Kraken2 → Assembly → QC → Contig characterization → Report
## Requirements

- conda
- Snakemake

## Setup

```bash
# Create environments
conda create -n veo_env python=3.10
conda activate veo_env
conda install -c bioconda -c conda-forge \
    nanostat nanoplot filtlong kraken2 \
    flye seqkit prodigal snakemake

conda create -n checkv -c conda-forge -c bioconda checkv

# Download databases
wget https://genome-idx.s3.amazonaws.com/kraken/k2_standard_08gb_20231009.tar.gz
tar -xzvf k2_standard_08gb_20231009.tar.gz -C databases/kraken_db/

conda activate checkv
checkv download_database databases/checkv_db/
```

## Usage

```bash
conda activate veo_env
snakemake --use-conda --conda-frontend conda --cores 8
```

## Results summary

| Contig | Organism | CheckV quality | Completeness |
|---|---|---|---|
| contig_1 | Vibrio phage | High-quality | 100% |
| contig_2 | Pseudomonas phage Bf7 | Low-quality | 23.1% |
| contig_3 | Pseudomonas phage 17A | High-quality | 94.1% |
| contig_4 | Vibrio phage (novel) | Medium-quality | 79.5% |
| contig_5 | Vibrio/Providencia phage | High-quality | 97.0% |
