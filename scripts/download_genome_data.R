library(rentrez)
library(BSgenomeForge)
library(rtracklayer)


# Download GFF3 file from genbank

KF297339.1.gff <- entrez_fetch(db = "nuccore", id = "KF297339.1", rettype = "gff3") |>
  strsplit("\\n") |> 
  unlist() |> 
  import(format = "gff3", text = _)

export.gff3(KF297339.1.gff, "data/KF297339.1.gff")