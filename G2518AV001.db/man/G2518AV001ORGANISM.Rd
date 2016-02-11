\name{G2518AV001ORGANISM}
\alias{G2518AV001ORGANISM}
\alias{G2518AV001ORGPKG}

\title{The Organism information for G2518AV001}
\description{
  G2518AV001ORGANISM is an R object that contains a single item: a
  character string that names the organism for which G2518AV001 was
  built.
  G2518AV001ORGPKG is an R object that contains a chararcter vector
  with the name of the organism package that a chip package depends on
  for its gene-centric annotation.
}
\details{
  Although the package name is suggestive of the organism for which it
  was built, G2518AV001ORGANISM provides a simple way to programmatically
  extract the organism name.
  G2518AV001ORGPKG provides a simple way to programmatically
  extract the name of the parent organism package.  The parent organism
  package is a strict dependency for chip packages as this is where the
  gene cetric information is ultimately extracted from.  The full
  package name will always be this string plus the extension ".db".  But
  most programatic acces will not require this extension, so its more
  convenient to leave it out.
}
\examples{
  G2518AV001ORGANISM
  G2518AV001ORGPKG
}
\keyword{datasets}

