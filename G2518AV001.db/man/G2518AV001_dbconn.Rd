
\name{G2518AV001_dbconn}

\alias{G2518AV001_dbconn}
\alias{G2518AV001_dbfile}
\alias{G2518AV001_dbschema}
\alias{G2518AV001_dbInfo}


\title{Collect information about the package annotation DB}

\description{
  Some convenience functions for getting a connection object to (or collecting
  information about) the package annotation DB.
}

\usage{
  G2518AV001_dbconn()
  G2518AV001_dbfile()
  G2518AV001_dbschema(file="", show.indices=FALSE)
  G2518AV001_dbInfo()
}

\arguments{
  \item{file}{
    A connection, or a character string naming the file to print to (see
    the \code{file} argument of the \code{\link[base]{cat}} function for
    the details).
  }
  \item{show.indices}{
    The CREATE INDEX statements are not shown by default.
    Use \code{show.indices=TRUE} to get them.
  }
}

\details{
  \code{G2518AV001_dbconn} returns a connection object to the
  package annotation DB.  IMPORTANT: Don't call
  \code{\link[DBI:dbConnect]{dbDisconnect}} on the connection object
  returned by \code{G2518AV001_dbconn} or you will break all the
  \code{\link[AnnotationDbi:AnnDbObj-class]{AnnDbObj}} objects defined
  in this package!

  \code{G2518AV001_dbfile} returns the path (character string) to the
  package annotation DB (this is an SQLite file).

  \code{G2518AV001_dbschema} prints the schema definition of the
  package annotation DB.

  \code{G2518AV001_dbInfo} prints other information about the package
  annotation DB.
}

\value{
  \code{G2518AV001_dbconn}: a DBIConnection object representing an
  open connection to the package annotation DB.

  \code{G2518AV001_dbfile}: a character string with the path to the
  package annotation DB.

  \code{G2518AV001_dbschema}: none (invisible \code{NULL}).

  \code{G2518AV001_dbInfo}: none (invisible \code{NULL}).
}

\seealso{
  \code{\link[DBI:dbSendQuery]{dbGetQuery}},
  \code{\link[DBI:dbConnect]{dbConnect}},
  \code{\link[AnnotationDbi:AnnDbObj-class]{dbconn}},
  \code{\link[AnnotationDbi:AnnDbObj-class]{dbfile}},
  \code{\link[AnnotationDbi:AnnDbObj-class]{dbschema}},
  \code{\link[AnnotationDbi:AnnDbObj-class]{dbInfo}}
}

\examples{
  ## Count the number of rows in the "probes" table:
  dbGetQuery(G2518AV001_dbconn(), "SELECT COUNT(*) FROM probes")

  G2518AV001_dbschema()

  G2518AV001_dbInfo()
}

\keyword{utilities}
\keyword{datasets}

