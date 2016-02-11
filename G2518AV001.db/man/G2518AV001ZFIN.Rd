\name{G2518AV001ZFIN}
\alias{G2518AV001ZFIN}
\alias{G2518AV001ZFIN2PROBE}
\title{Map Zfin accession numbers with Entrez Gene identifiers}  
\description{ 
  G2518AV001ZFIN is an R object that contains mappings between 
  Entrez Gene identifiers and Zfin accession numbers.    
}
\details{
  This object is a simple mapping of manufacturer identifiers to Zfin
  Accessions.

  Mappings were based on data provided by: Entrez Gene  
  ftp://ftp.ncbi.nlm.nih.gov/gene/DATA  
  With a date stamp from the source of: 2015-Sep27
}

\examples{
    x <- G2518AV001ZFIN
    # Get the entrez gene IDs that are mapped to an Zfin ID
    mapped_genes <- mappedkeys(x)
    # Convert to a list
    xx <- as.list(x[mapped_genes])
    if(length(xx) > 0) {
      # Get the Zfin IDs for the first five genes
      xx[1:5]
      # Get the first one
      xx[[1]]
    }
}
\keyword{datasets}



