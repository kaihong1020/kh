download_genbank <- function(accession) 
  {
  for (acc in accession)
    {
    URL <- paste("https://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=nucleotide&id=", 
                 acc,"&rettype=gb&retmode=text",
                 sep = "")
    utils::download.file(url = URL,destfile = paste0(acc, ".gb"),quiet = TRUE)
  }
}

