---
marp: true
theme: default
paginate: true
footer: "Natalia Nenasheva · April 26, 2026 · https://github.com/nvnenasheva/VEOTask"
style: |
  :root {
    --accent: #1a6b4a;
    --accent2: #1a4080;
    --muted: #6b7280;
    --border: #e5e7eb;
    --card: #f9fafb;
    --text: #111827;
    --green-bg: #f0fdf4;
    --blue-bg: #eff6ff;
    --yellow-bg: #fefce8;
    --red-bg: #fef2f2;
  }

  section {
    background: #ffffff;
    color: var(--text);
    font-family: 'Helvetica Neue', Arial, sans-serif;
    font-size: 18px;
    padding: 30px 44px 44px 44px;
    box-sizing: border-box;
    overflow: hidden;
    display: flex;
    flex-direction: column;
  }

  section::before {
    content: '';
    position: absolute;
    top: 0; left: 0; right: 0;
    height: 4px;
    background: linear-gradient(90deg, var(--accent), var(--accent2));
  }

  footer {
    font-size: 18px !important;
    color: var(--muted) !important;
    border-top: 1px solid var(--border);
    padding-top: 5px;
  }

  h1 {
    font-size: 2em;
    color: #1e3a8a;
    font-weight: 800;
    margin: 0 0 10px 0;
    line-height: 1.15;
    letter-spacing: -0.02em;
  }

  h2 {
    font-size: 1.2em;
    color: var(--accent2);
    border-left: 4px solid var(--accent);
    padding-left: 12px;
    margin: 0 0 16px 0;
    font-weight: 700;
    text-transform: uppercase;
    letter-spacing: 0.06em;
  }

  h3 {
    font-size: 0.95em;
    color: var(--accent);
    text-transform: uppercase;
    letter-spacing: 0.08em;
    margin: 0 0 8px 0;
    font-weight: 700;
  }

  p {
    font-size: 0.98em;
    line-height: 1.5;
    margin: 6px 0;
  }

  ul {
    padding-left: 1.2em;
    margin: 6px 0;
  }

  li {
    font-size: 0.94em;
    line-height: 1.6;
    margin: 3px 0;
  }

  li::marker { color: var(--accent); }

  strong { color: var(--accent); font-weight: 700; }
  em { color: var(--accent2); font-style: italic; }

  code {
    background: var(--card);
    color: var(--accent);
    padding: 2px 6px;
    border-radius: 3px;
    font-size: 0.84em;
    border: 1px solid var(--border);
    font-family: 'JetBrains Mono', 'Fira Code', monospace;
  }

  pre {
    background: var(--card) !important;
    border: 1px solid var(--border);
    border-radius: 6px;
    padding: 12px 16px;
    margin: 8px 0;
    font-size: 0.72em;
    line-height: 1.55;
    overflow: hidden;
  }

  pre code {
    background: none;
    border: none;
    padding: 0;
    font-size: 1em;
    color: var(--text);
  }

  table {
    width: 100%;
    border-collapse: collapse;
    font-size: 0.86em;
    margin: 8px 0 14px 0;
  }

  th {
    background: var(--card);
    color: var(--accent2);
    padding: 8px 11px;
    text-align: left;
    border-bottom: 2px solid var(--accent);
    font-size: 0.85em;
    text-transform: uppercase;
    letter-spacing: 0.05em;
    font-weight: 700;
  }

  td {
    padding: 7px 11px;
    border-bottom: 1px solid var(--border);
    line-height: 1.4;
  }

  tr:last-child td { border-bottom: none; }

  .box {
    border-radius: 0 6px 6px 0;
    padding: 12px 15px;
    margin: 10px 0;
    font-size: 0.9em;
    line-height: 1.45;
  }

  .green  { background: var(--green-bg);  border-left: 3px solid var(--accent); }
  .blue   { background: var(--blue-bg);   border-left: 3px solid var(--accent2); }
  .yellow { background: var(--yellow-bg); border-left: 3px solid #ca8a04; }
  .red    { background: var(--red-bg);    border-left: 3px solid #dc2626; }

  .grid-2 {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 24px;
    flex: 1;
  }

  .grid-3 {
    display: grid;
    grid-template-columns: 1fr 1fr 1fr;
    gap: 16px;
    flex: 1;
  }

  .step {
    background: var(--card);
    border: 1px solid var(--border);
    border-top: 3px solid var(--accent);
    border-radius: 6px;
    padding: 14px 16px;
    font-size: 0.9em;
  }

  .step-title {
    font-weight: 700;
    color: var(--accent2);
    text-transform: uppercase;
    font-size: 0.9em;
    letter-spacing: 0.05em;
    margin-bottom: 8px;
  }

  .io {
    font-size: 0.95em;
    color: var(--muted);
    margin: 3px 0;
    line-height: 1.4;
  }

  .io strong { color: var(--text); font-weight: 600; }

  .tag {
    display: inline-block;
    background: var(--green-bg);
    border: 1px solid var(--accent);
    color: var(--accent);
    padding: 3px 10px;
    border-radius: 20px;
    font-size: 0.75em;
    margin: 3px 2px;
    font-weight: 600;
  }

  .muted { color: var(--muted); font-size: 0.88em; }

  img {
    max-width: 100%;
    max-height: 300px;
    object-fit: contain;
    display: block;
    margin: 0 auto;
  }

  .col { display: flex; flex-direction: column; gap: 12px; }

  /* Slide 2: make Kraken plot visibly larger */
  .kraken-plot {
    width: 100%;
    height: 340px !important;
    max-height: 340px !important;
    object-fit: contain;
    margin: 4px 0 10px 0;
    display: block;
    transform: none;
  }

  /* Slide 2 specific layout: prioritize Kraken figure readability */
  section.reads-qc .grid-2 {
    grid-template-columns: 0.92fr 1.08fr;
    gap: 20px;
  }

  section.reads-qc .kraken-plot {
    height: 380px !important;
    max-height: 380px !important;
    width: 100%;
    background: #fff;
    border: 1px solid var(--border);
    border-radius: 6px;
    padding: 4px;
    box-sizing: border-box;
  }

  section.reads-qc .box.yellow {
    font-size: 0.86em;
    line-height: 1.35;
    margin-top: 6px;
  }

  /* Slide 1 tuning: better title position and table readability */
  section.intro h1 {
    margin-top: 8px;
    margin-bottom: 12px;
  }

  section.intro .author-name {
    color: #000000;
    font-size: 1.06em;
    font-weight: 600;
    margin: 2px 0 8px 0;
  }

  section.intro .grid-2 {
    grid-template-columns: 1.35fr 0.65fr;
    gap: 18px;
  }

  section.intro .dag-wrap {
    width: 100%;
    padding: 6px;
    border: 1px solid var(--border);
    border-radius: 6px;
    background: #fff;
  }

  section.intro .dag-wrap img {
    width: 100%;
    max-height: 390px;
    object-fit: contain;
    margin: 0;
  }

  section.intro table {
    font-size: 0.8em;
    margin-top: 6px;
  }

  section.intro th,
  section.intro td {
    padding: 6px 8px;
    line-height: 1.32;
    vertical-align: top;
  }

  /* Compact layout for dense summary slides */
  section.compact {
    padding: 20px 28px 30px 28px;
  }

  section.compact h2 {
    margin: 0 0 8px 0;
  }

  section.compact h3 {
    margin: 0 0 4px 0;
    font-size: 0.9em;
  }

  section.compact table {
    margin: 4px 0 10px 0;
    font-size: 0.82em;
  }

  section.compact th,
  section.compact td {
    padding: 6px 8px;
    line-height: 1.25;
  }

  section.compact .grid-2 {
    gap: 10px;
  }

  section.compact .box {
    margin: 4px 0;
    padding: 7px 9px;
    font-size: 0.84em;
    line-height: 1.3;
  }
---

<!-- SLIDE 1: Title + Pipeline Overview -->

<!-- _class: intro -->
# Nanopore Metagenomic Assembly Pipeline

<div class="author-name">Natalia Nenasheva</div>

**Repository:** [github.com/nvnenasheva/VEOTask](https://github.com/nvnenasheva/VEOTask)

**Sample:** `1_024_O` &nbsp;·&nbsp; No prior knowledge of sample composition &nbsp;·&nbsp; <span class="tag">Snakemake</span> <span class="tag">Metagenomics</span>

| Tool | Input | Output | Key parameters | Goal |
|---|---|---|---|---|
| NanoStat · Filtlong | reads .fastq.gz | filtered .fastq.gz | `--min_length 1000` | QC + remove short reads |
| Kraken2 | reads .fastq.gz | kraken_report .txt | k2_standard_08gb | Community composition → assembly mode |
| Flye | filtered .fastq.gz | assembly .fasta | `--nano-raw --meta` | Metagenome assembly |
| seqkit stats | assembly .fasta | stats .txt | `-a` | Contig QC: N50, GC%, length |
| Kraken2 · BLASTn | assembly .fasta | per-contig report .txt | per-sequence output | Taxonomic identity of each contig |
| Prodigal | assembly .fasta | genes .gff · proteins .faa | `-p meta` | Gene prediction |
| CheckV | assembly .fasta | quality_summary .tsv | checkv-db-v1.5 | Viral completeness & contamination |

<div class="box blue" style="font-size:0.82em; margin-top:10px;">
<code>kraken_reads</code> → <code>flye</code>: taxonomic classification is an <strong>explicit dependency</strong> --> determines wether to use <code>--meta</code> assembly mode
</div>

---

<!-- SLIDE 2: QC + Taxonomy of reads -->

<!-- _class: reads-qc -->
## Step 1–2: Raw Read QC & Taxonomic Classification of Reads

<div class="grid-2" style="flex:1;">
<div class="col">

### NanoStat results

| Metric | Value |
|---|---|
| Total reads | 5,251 |
| Total bases | **50.8 Mb** |
| Median read length | 6,962 bp |
| Read length N50 | **14,392 bp** |
| Max read length | 255,199 bp |
| Median quality | Q14.1 |
| Reads > Q10 | **100%** |
| Reads > Q15 | 25.2% |
| Reads > Q20 | **0.1%** |

<div class="box green">
→ Median Q14 → use <code>--nano-raw</code> (not <code>--nano-hq</code>, which requires Q20+)<br>
→ N50 14 kb, max 255 kb → excellent read length for long-read assembly<br>
→ Filter only reads &lt;1 kb — coverage already low, avoid further loss
</div>

</div>
<div class="col">

### Kraken2 on raw reads

<img src="results/figures/kraken_reads.png" alt="Kraken2 on raw reads" class="kraken-plot">

<div class="box yellow">
<strong>79% unclassified</strong> - likely organisms absent from database<br>
No single dominant organism among classified reads<br>
→ <strong>Decision: metagenomic sample</strong><br>
→ Use Flye <code>--meta</code> mode for assembly
</div>

---

<!-- SLIDE 3: Assembly -->

## Step 3–4: Assembly & Assembly QC

<div class="grid-2" style="flex:1;">
<div class="col">

### Flye `--meta` assembly results

| Metric | Value |
|---|---|
| Contigs assembled | **5** |
| Total length | **183 kb** |
| N50 | 41,137 bp |
| Largest contig | 58,829 bp |
| Smallest contig | 11,397 bp |
| GC content | 49.84% |
| Mean coverage (Flye) | 232× |
| Input data assembled | **~0.4%** |

<div class="box blue">
<strong>Why so few contigs?</strong> 50.8 Mb distributed across many organisms → most fall below Flye's minimum coverage threshold (~10×). Only organisms with sufficient local depth were assembled. The 5 contigs that did assemble show high N50 (41 kb) and strong internal coverage (232×).
</div>

</div>
<div class="col">

### Why `--meta` mode?

<div class="box yellow">
Standard assemblers assume <strong>uniform coverage</strong> across the genome. In a metagenome, each organism contributes a different fraction of reads → highly uneven coverage. Flye <code>--meta</code> is specifically designed for this: it adjusts graph construction to handle coverage variation across organisms.
</div>

### Why `--nano-raw` and not `--nano-hq`?

<div class="box green">
<code>--nano-hq</code> requires median read quality ≥ Q20.<br>
Our data: median Q14.1, only <strong>0.1% of reads pass Q20</strong>.<br>
→ Using <code>--nano-hq</code> would produce worse results.<br>
→ <code>--nano-raw</code> is the correct mode for R9.4.1 chemistry with standard basecalling.
</div>


---

<!-- SLIDE 4: Contig characterization -->

## Step 5–6: Contig Taxonomy, BLAST & Gene Prediction

### Kraken2 per-contig classification + BLASTn (contig_4)

| Contig | Length | Kraken2 assignment | k-mer hits | BLASTn result | Identity |
|---|---|---|---|---|---|
| contig_1 | 39,266 bp | *Vibrio* sp. J383 | strong | — | — |
| contig_2 | 11,397 bp | *Pseudomonas* phage Bf7 | strong | — | — |
| contig_3 | 41,137 bp | *Pseudomonas* phage 17A | strong | — | — |
| **contig_4** | **32,457 bp** | **Unclassified** | **5 k-mers only** | ***Vibrio* phage 1.134** (MG592505.1) | **98.5%** |
| contig_5 | 58,829 bp | *Providencia* sp. PROV188 | strong | — | — |

<div class="box red" style="margin-top:8px;">
<strong>contig_4: only 5 k-mer hits in entire Kraken2 DB</strong><br>
Organism simply absent from database → BLASTn against NCBI nt returned 46 hits, all <em>Vibrio phages</em>, E-value 0.0, top hit 98.5% identity. Distance tree places contig_4 within a well-supported Vibrio phage clade.
</div>

<div class="box green">
<strong>Prodigal gene prediction</strong> (<code>-p meta</code>)<br>
333 genes total across 5 contigs:<br>
contig_1: 66 · contig_2: 24 · contig_3: 94 · contig_4: 65 · contig_5: 84<br>
Low count for contig_2 consistent with its low completeness (fragment only).
</div>

---

<!-- SLIDE 5: CheckV + Discussion + Conclusions -->

## Step 7: Viral Completeness (CheckV) & Conclusions

### CheckV quality summary — all contigs viral, host_genes = 0

| Contig | Kraken2 | CheckV quality | Completeness | Viral / Total genes | Host genes |
|---|---|---|---|---|---|
| contig_1 | *Vibrio* sp. → **phage** | High | **100%** | 23 / 66 | **0** |
| contig_2 | *Pseudomonas* phage Bf7 | Low | 23.1% | 11 / 24 | **0** |
| contig_3 | *Pseudomonas* phage 17A | High | 94.1% | 41 / 94 | **0** |
| contig_4 | Unclassified → *Vibrio* phage | Medium | 79.5% | 25 / 65 | **0** |
| contig_5 | *Providencia* sp. → **phage** | High | **97.0%** | 37 / 84 | **0** |

<div class="box red" style="margin-top:8px;">
<strong>Key discordance — Kraken2 vs CheckV:</strong><br>
Kraken2 assigned contig_1 and contig_5 to <em>bacteria</em>. CheckV shows host_genes = 0 and >96% completeness for both → they are <strong>phage genomes</strong>. K-mer classifiers struggle with phage sequences due to similarity with host genomes. <strong>No single tool was sufficient.</strong>
</div>

<div class="box green">
<strong>Conclusions</strong><br>
· Sample is a <strong>viral metagenome</strong> — likely marine/coastal environment<br>
· <strong>3/5 contigs</strong> are near-complete phage genomes (&gt;94% completeness)<br>
· Dominated by <em>Vibrio</em> &amp; <em>Pseudomonas</em> bacteriophages<br>
· Kraken2 + BLAST + CheckV all necessary for correct characterization<br>
· Pipeline fully reproducible: <strong>Snakemake + conda + GitHub</strong><br>
· Deeper sequencing recommended for full metagenome recovery
</div>