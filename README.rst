 R Package G2518AV001AnnotDB
===========================

G2518AV001AnnotDB  is an annotation package for Agilent-013223 D. rerio (Zebrafish) Oligo Microarray G2518A Option 001

.. _manufacturerUrl: http://www.agilent.com


Library used to build the annotation DB
--------------------------------------


- AnnotationForge
- org.Dr.eg.db

Build "*.tar.gz" using
---------------------

.. code-block::

R CMD build G2518AV1.db

Installation instructions
-------------------------

.. code-block::

git clone https://github.com/demis001/G2518AV001.git
cd G2518AV001
R CMD INSTALL G2518AV001.db_1.0.0.tar.gz



Usage
-----

```
library(G2518AV001.db)
```


Supported R Versions
=========================

Depends: R (>= 2.7.0), methods, AnnotationDbi (>= 1.32.3), org.Dr.eg.db (>= 3.2.3)


Authors
=======

* Dereje Jima
