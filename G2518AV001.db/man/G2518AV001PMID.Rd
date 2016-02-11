\name{G2518AV001PMID}
\alias{G2518AV001PMID}
\alias{G2518AV001PMID2PROBE}
\title{Maps between Manufacturer Identifiers and PubMed Identifiers}
\description{
   G2518AV001PMID is an R object that provides mappings between
   manufacturer identifiers and PubMed identifiers.
   G2518AV001PMID2PROBE is an R object that provides mappings between
  PubMed identifiers and manufacturer identifiers.
}
\details{
  When G2518AV001PMID is viewed as a list each manufacturer
  identifier is mapped to a named vector of PubMed identifiers. The name
  associated with each vector corresponds to the manufacturer
  identifier. The length of the vector may be one or greater, depending
  on how many PubMed identifiers a given manufacturer identifier is
  mapped to. An \code{NA} is reported for any manufacturer identifier
  that cannot be mapped to a PubMed identifier.
  
  When G2518AV001PMID2PROBE is viewed as a list each PubMed
  identifier is mapped to a named vector of manufacturer
  identifiers. The name represents the PubMed identifier and the vector
  contains all manufacturer identifiers that are represented by that
  PubMed identifier. The length of the vector may be one or longer,
  depending on how many manufacturer identifiers are mapped to a given
  PubMed identifier.
  
  Titles, abstracts, and possibly full texts of articles can be obtained
  from PubMed by providing a valid PubMed identifier. The pubmed function of
  annotate can also be used for the same purpose.

  Mappings were based on data provided by: Entrez Gene  
  ftp://ftp.ncbi.nlm.nih.gov/gene/DATA  
  With a date stamp from the source of: 2015-Sep27

}
\references{
  \url{http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?db=PubMed}
}
\examples{
        x <- G2518AV001PMID
        # Get the probe identifiers that are mapped to any PubMed ID
        mapped_probes <- mappedkeys(x)
        # Convert to a list
        xx <- as.list(x[mapped_probes])
    if(length(xx) > 0){
        # Get the PubMed identifiers for the first two probe identifiers
        xx[1:2]
        # Get the first one
        xx[[1]]
        if(interactive() && !is.null(xx[[1]]) && !is.na(xx[[1]])
           && require(annotate)){
            # Get article information as XML files
            xmls <- pubmed(xx[[1]], disp = "data")
            # View article information using a browser
            pubmed(xx[[1]], disp = "browser")
        }
    }

    # Now convert the reverse map object G2518AV001PMID2PROBE to a list
    xx <- as.list(G2518AV001PMID2PROBE)
    if(length(xx) > 0){
        # Get the probe identifiers for the first two PubMed identifiers
        xx[1:2]
        # Get the first one
        xx[[1]]
        if(interactive() && require(annotate)){
            # Get article information as XML files for a PubMed id
            xmls <- pubmed(names(xx)[1], disp = "data")
            # View article information using a browser
            pubmed(names(xx)[1], disp = "browser")
        }
    }
}
\keyword{datasets}

