datacache <- new.env(hash=TRUE, parent=emptyenv())

G2518AV001 <- function() showQCData("G2518AV001", datacache)
G2518AV001_dbconn <- function() dbconn(datacache)
G2518AV001_dbfile <- function() dbfile(datacache)
G2518AV001_dbschema <- function(file="", show.indices=FALSE) dbschema(datacache, file=file, show.indices=show.indices)
G2518AV001_dbInfo <- function() dbInfo(datacache)

G2518AV001ORGANISM <- "Danio rerio"

.onLoad <- function(libname, pkgname)
{
    ## Connect to the SQLite DB
    dbfile <- system.file("extdata", "G2518AV001.sqlite", package=pkgname, lib.loc=libname)
    assign("dbfile", dbfile, envir=datacache)
    dbconn <- dbFileConnect(dbfile)
    assign("dbconn", dbconn, envir=datacache)

    ## Create the OrgDb object
    sPkgname <- sub(".db$","",pkgname)
    txdb <- loadDb(system.file("extdata", paste(sPkgname,
      ".sqlite",sep=""), package=pkgname, lib.loc=libname),
                   packageName=pkgname)    
    dbNewname <- AnnotationDbi:::dbObjectName(pkgname,"ChipDb")
    ns <- asNamespace(pkgname)
    assign(dbNewname, txdb, envir=ns)
    namespaceExport(ns, dbNewname)
        
    ## Create the AnnObj instances
    ann_objs <- createAnnObjs.SchemaChoice("ZEBRAFISHCHIP_DB", "G2518AV001", "chip G2518AV001", dbconn, datacache)
    mergeToNamespaceAndExport(ann_objs, pkgname)
    packageStartupMessage(AnnotationDbi:::annoStartupMessages("G2518AV001.db"))
}

.onUnload <- function(libpath)
{
    dbFileDisconnect(G2518AV001_dbconn())
}

