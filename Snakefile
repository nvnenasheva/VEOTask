configfile: "config.yaml"

rule all:
    input:
        "results/qc_raw/NanoStats.txt",
        "results/qc_raw/plots/1_024_ONanoPlot-report.html",
        "results/kraken_reads/kraken_report.txt",
        "results/assembly/assembly.fasta",
        "results/qc_assembly/stats.txt",
        "results/kraken_contigs/kraken_contigs_output.txt",
        "results/prodigal/genes.gff",
        "results/checkv/quality_summary.tsv"


rule nanostat_raw:
    input:
        config["reads"]
    output:
        "results/qc_raw/NanoStats.txt"
    params:
        name=config["sample_name"]
    threads: config["threads"]
    conda: "envs/veo_env.yaml"
    shell:
        "NanoStat --fastq {input} "
        "--outdir results/qc_raw/ "
        "--name NanoStats "
        "--threads {threads}"


rule nanoplot_raw:
    input:
        config["reads"]
    output:
        "results/qc_raw/plots/1_024_ONanoPlot-report.html"
    params:
        prefix=config["sample_name"]
    conda: "envs/veo_env.yaml"
    shell:
        "NanoPlot --fastq {input} "
        "--outdir results/qc_raw/plots/ "
        "--prefix {params.prefix}"


rule kraken_reads:
    input:
        config["reads"]
    output:
        report="results/kraken_reads/kraken_report.txt",
        out="results/kraken_reads/kraken_output.txt"
    params:
        db=config["kraken_db"]
    threads: config["threads"]
    conda: "envs/veo_env.yaml"
    shell:
        "kraken2 --db {params.db} "
        "--threads {threads} "
        "--report {output.report} "
        "--output {output.out} "
        "{input}"


rule filtlong:
    input:
        config["reads"]
    output:
        "results/reads_filtered.fastq.gz"
    params:
        min_len=config["min_read_length"]
    conda: "envs/veo_env.yaml"
    shell:
        "filtlong --min_length {params.min_len} {input} | "
        "gzip > {output}"


rule flye:
    input:
        "results/reads_filtered.fastq.gz"
    output:
        "results/assembly/assembly.fasta"
    threads: config["threads"]
    conda: "envs/veo_env.yaml"
    shell:
        "flye --nano-raw {input} "
        "--meta "
        "--out-dir results/assembly/ "
        "--threads {threads}"


rule assembly_qc:
    input:
        "results/assembly/assembly.fasta"
    output:
        "results/qc_assembly/stats.txt"
    conda: "envs/veo_env.yaml"
    shell:
        "mkdir -p results/qc_assembly && "
        "seqkit stats -a {input} > {output}"


rule kraken_contigs:
    input:
        "results/assembly/assembly.fasta"
    output:
        report="results/kraken_contigs/kraken_contigs_report.txt",
        out="results/kraken_contigs/kraken_contigs_output.txt"
    params:
        db=config["kraken_db"]
    threads: config["threads"]
    conda: "envs/veo_env.yaml"
    shell:
        "kraken2 --db {params.db} "
        "--threads {threads} "
        "--report {output.report} "
        "--output {output.out} "
        "{input}"


rule prodigal:
    input:
        "results/assembly/assembly.fasta"
    output:
        gff="results/prodigal/genes.gff",
        faa="results/prodigal/proteins.faa"
    conda: "envs/veo_env.yaml"
    shell:
        "prodigal -i {input} "
        "-o {output.gff} "
        "-f gff "
        "-a {output.faa} "
        "-p meta"


rule checkv:
    input:
        "results/assembly/assembly.fasta"
    output:
        "results/checkv/quality_summary.tsv"
    params:
        db=config["checkv_db"]
    threads: config["threads"]
    conda: "envs/checkv.yaml"
    shell:
        "checkv end_to_end {input} "
        "results/checkv/ "
        "-d {params.db} "
        "-t {threads}"
