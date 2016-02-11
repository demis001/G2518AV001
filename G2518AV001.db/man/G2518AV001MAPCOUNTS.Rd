\name{G2518AV001MAPCOUNTS} 

\alias{G2518AV001MAPCOUNTS}


\title{Number of mapped keys for the maps in package G2518AV001.db}

\description{
  G2518AV001MAPCOUNTS provides the "map count" (i.e. the
  count of mapped keys) for each map in package G2518AV001.db.
}

\details{  
  This "map count" information is precalculated and stored in the
  package annotation DB. This allows some quality control and is used by
  the \code{\link[AnnotationDbi:AnnDbPkg-checker]{checkMAPCOUNTS}}
  function defined in AnnotationDbi to compare and validate different
  methods (like \code{count.mappedkeys(x)} or
  \code{sum(!is.na(as.list(x)))}) for getting the "map count" of a given
  map.
}

\seealso{
  \code{\link[AnnotationDbi:Bimap-keys]{mappedkeys}},
  \code{\link[AnnotationDbi:Bimap-keys]{count.mappedkeys}},
  \code{\link[AnnotationDbi:AnnDbPkg-checker]{checkMAPCOUNTS}}
}

\examples{
  G2518AV001MAPCOUNTS
  mapnames <- names(G2518AV001MAPCOUNTS)
  G2518AV001MAPCOUNTS[mapnames[1]]
  x <- get(mapnames[1])
  sum(!is.na(as.list(x)))
  count.mappedkeys(x)   # much faster!

  ## Check the "map count" of all the maps in package G2518AV001.db
  checkMAPCOUNTS("G2518AV001.db")
}

\keyword{datasets}

