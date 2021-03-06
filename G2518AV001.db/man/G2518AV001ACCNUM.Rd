\name{G2518AV001ACCNUM}
\alias{G2518AV001ACCNUM}
\title{Map Manufacturer identifiers to Accession Numbers}  
\description{ 
  G2518AV001ACCNUM is an R object that contains mappings between a
  manufacturer's identifiers and manufacturers accessions.
}
\details{
  For chip packages such as this, the ACCNUM mapping comes directly from
  the manufacturer.  This is different from other mappings which are
  mapped onto the probes via an Entrez Gene identifier.

  Each manufacturer identifier maps to a vector containing a GenBank accession number.

  Mappings were based on data provided by: Entrez Gene  
  ftp://ftp.ncbi.nlm.nih.gov/gene/DATA  
  With a date stamp from the source of: 2015-Sep27
}

\examples{
        x <- G2518AV001ACCNUM
        # Get the probe identifiers that are mapped to an ACCNUM
        mapped_probes <- mappedkeys(x)
        # Convert to a list
        xx <- as.list(x[mapped_probes])
        if(length(xx) > 0) {
          # Get the ACCNUM for the first five probes
          xx[1:5]
          # Get the first one
          xx[[1]]
        }
}
\keyword{datasets}

