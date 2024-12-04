rule download_genome_data:
    output: 
        "data/KF297339.1.gff"
    log:
        out = "log/download_genome_data.out",
        err = "log/download_genome_data.err"
    conda:
        "../envs/create-bsgenome.yml"
    shell:
        "Rscript scripts/download_genome_data.R"
