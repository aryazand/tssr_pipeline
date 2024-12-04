rule all: 
    input:
        "data/KF297339.1.gff"

include: "rules/download_genome_data.smk"