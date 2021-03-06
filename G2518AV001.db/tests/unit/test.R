testForGOSourceMismatches <- function(){
  require("GO.db")
  require("annotate")
  require("G2518AV001.db")
  g = Lkeys(GOTERM)
  m = Rkeys(getAnnMap('GO2PROBE', gsub(".db$","","G2518AV001.db")))
  ##Are all the IDs from m in g?
  all((m %in% g)) 
}

msg = paste("The GO annotations are out of sync between the GO.db and the",
            " annotation package being tested.  Please ensure that GO.db",
            " is the very latest version, or update the the relevant",
            " .db0 source packages and recreate the package.", sep="")

checkTrue(testForGOSourceMismatches(),
          msg = paste(strwrap(msg, exdent=2),collapse="\n") )

getGODate <- function(){
  require(GO.db)
  dbmeta(GO_dbconn(), "GOSOURCEDATE")
}

getPkgDate <-function(){
  require("G2518AV001.db")
  dbmeta(eval(call(name = paste(gsub(".db$","","G2518AV001.db"),
                     "_dbconn",sep=""))), "GOSOURCEDATE")
}

msg = paste("The date stamps for the GO annotations are out of sync between",
             " the GO.db and the annotation package being tested.  Please",
             " ensure that GO.db is the very latest version, or update to",
             " the relevant .db0 source packages to recreate the package.",
             sep="")

checkIdentical(getGODate(), getPkgDate(), 
               msg = paste(strwrap(msg, exdent=2),collapse="\n") )




## new test to verify probes and genes exist (for the chip packages)
getProbes <- function(){
    require("G2518AV001.db")
    as.numeric(dbGetQuery(dbconn(G2518AV001.db),
                          "SELECT count(DISTINCT probe_id) FROM probes"))
}

msg = paste("This package has no probes. This can be caused by a large number ",
  "of upstream changes. But it's usually caused by alterations to the source ",
  "files used to extrac the probes at the very beginning.", sep="")

checkTrue(getProbes() > 0,
          msg = paste(strwrap(msg, exdent=2),collapse="\n") )


getGenes <- function(){
    require("G2518AV001.db")
    as.numeric(dbGetQuery(dbconn(G2518AV001.db),
                 "SELECT count(DISTINCT gene_id) FROM probes"))
}

msg = paste("This package has no genes. This can be caused by a large number ",
  "of upstream changes. But it's usually caused by alterations to the source ",
  "files used to extrac the probes at the very beginning.", sep="")

checkTrue(getGenes() > 0,
          msg = paste(strwrap(msg, exdent=2),collapse="\n") )

