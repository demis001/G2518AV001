\name{G2518AV001PATH}
\alias{G2518AV001PATH}
\alias{G2518AV001PATH2PROBE}
\title{Mappings between probe identifiers and KEGG pathway identifiers}
\description{
  KEGG (Kyoto Encyclopedia of Genes and Genomes) maintains pathway data
  for various organisms.

  G2518AV001PATH maps probe identifiers to the identifiers used by
  KEGG for pathways in which the genes represented by the probe
  identifiers are involved

  G2518AV001PATH2PROBE is an R object that provides mappings between
  KEGG identifiers and manufacturer identifiers.  
}
\details{
  Each KEGG pathway has a name and identifier. Pathway name for a given pathway
  identifier can be obtained using the KEGG data package that can either be
  built using AnnBuilder or downloaded from Bioconductor
  \url{http://www.bioconductor.org}.

  Graphic presentations of pathways are searchable at
  url http://www.genome.ad.jp/kegg/pathway.html by using pathway identifiers as
  keys.   

  Mappings were based on data provided by: KEGG GENOME  
  ftp://ftp.genome.jp/pub/kegg/genomes  
  With a date stamp from the source of: 2011-Mar15

}
\references{
  \url{http://www.genome.ad.jp/kegg/}
}
\examples{
    x <- G2518AV001PATH
    # Get the probe identifiers that are mapped to a KEGG pathway ID
    mapped_probes <- mappedkeys(x)
    # Convert to a list
    xx <- as.list(x[mapped_probes])
    if(length(xx) > 0) {
      # Get the PATH for the first five probes
      xx[1:5]
      # Get the first one
      xx[[1]]
    }

    # Now convert the G2518AV001PATH2PROBE object to a list
    xx <- as.list(G2518AV001PATH2PROBE)
    if(length(xx) > 0){
        # Get the probe identifiers for the first two pathway identifiers
        xx[1:2]
        # Get the first one
        xx[[1]]
    } 
}
\keyword{datasets}

