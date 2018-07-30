---
layout: page
title: Corpora
permalink: /corpora/
---

XML/TEI versions of corpora are publicly available under Creative Commons licenses for non-commercial users either at GitHub, or for cooperation partners through our [GitLab server](https://gitlab.sowi.uni-due.de). GitHub/GitLab offers tools for tracking the differences of versions and comes with a issue tracking system very useful for quality management purposes.

Linguistically annotated versions of corpora that have been indexed and imported into the Corpus Workbench are shipped using R data packages. In combination with the polmineR package, large corpora will work (more or less) out of the box on average computers that everybody can afford. To keep the initial installation size of data packages modest, they only include small sample data and corpus-specific functionality at the outset. Full corpora can then be downloaded from a dedicated webspace. The following corpora are accessible accordingly.

---

<span style="font-size: 20px;display: inline !important;vertical-align: bottom; padding-right: 1em; font-weight: bold;">GermaParl</span><a style="display: inline !important;" href="https://github.com/PolMine/GermaParl"><img style="display:inline !important;width:20px !important; height:20px;" src="{{ "/assets/icons/mark-github.svg" | prepend: site.baseurl }}"></a>    <a href="https://creativecommons.org/licenses/by-nc-sa/4.0/"><img style="display: inline !important;height: 20px; width: unset !important;" src="https://img.shields.io/badge/License-CC%20BY--NC--SA%204.0-lightgrey.svg"/></a>  <a href="https://doi.org/10.5281/zenodo.1312551"><img src="https://zenodo.org/badge/DOI/10.5281/zenodo.1312551.svg" alt="DOI" style="display: inline !important;height: 20px; width: unset !important;"></a>  <a href="https://travis-ci.org/PolMine/GermaParl"><img style="display: inline; width: unset !important;height: 20px;"  src="https://api.travis-ci.org/PolMine/GermaParl.svg?branch=master"/></a>  <a href=""><img  style="display: inline !important; width: unset !important; height: 20px;" src="https://ci.appveyor.com/api/projects/status/github/PolMine/GermaParl?branch=master&svg=true"/></a>
  
GermaParl, a corpus of debates in the German Bundestag, is the flagship corpus of the PolMine Project. At this stage, the corpus includes all plenary protocols that were published by the German Bundestag between 1996 and 2016. Plain text documents issued by the German Bundestag were considered the best raw data format for corpus preparation and were used whenever they are available. For a period between 2008 and 2010, txt files are not available throughout. To fill the gap, pdf documents were processed. The naming of GermaParl is inspired by the EuroParl and DutchParl corpus. XML/TEI version of the corpus are available at GitHub. Consult the GitHub Pages with the package and corpus documentation to learn more. 

To install GermaParl, proceed as follows.

```r
install.packages(drat)
drat::addRepo("polmine")
install.packages("GermaParl")
library(GermaParl)
germaparl_download_corpus()
```

To check whether GermaParl has been installed correctly, run the following code.

```r
install.packages("polmineR")
library(polmineR)
use("GermaParl")
corpus() # you should see GERMAPARL in the output table
```

---

<span style="font-size: 20px;display: inline !important;vertical-align: bottom; padding-right: 1em; font-weight: bold;">UNGA</span>  <a href="https://creativecommons.org/licenses/by-nc-sa/4.0/"><img style="display: inline !important;height: 20px; width: unset !important;" src="https://img.shields.io/badge/License-CC%20BY--NC--SA%204.0-lightgrey.svg"/></a>

The data included in the corpus are the verbatim meeting records of the United Nations General Assembly. At http://research.un.org/c.php?g=98268&p=636540, the UN describes the practices and systematics of record keeping in some detail. After handling technical restrictions of the UN's document database (http://unbisnet.un.org), most of the verbatim records (about 7000) were downloaded, a qualitative evaluation revealed that the recognition accuracy of the optical character recognition (OCR) of the documents was limited for meeting records from 1993 or before. Hence, we decided to restrict ourselves to the use of documents starting from 1994 (the 49th session). At the point of writing, the most recent document processed is the one of the 79th meeting of the 72nd session (20 March 2018). All in all, at this point we work with 2585 pdf files.

To install UNGA, proceed as follows.

```r
install.packages(drat)
drat::addRepo("polmine")
install.packages("UNGA")
library(UNGA)
unga_download_corpus()
```

To check whether UNGA has been installed correctly, proceed as follows.

```r
install.packages("polmineR")
library(polmineR)
use("UNGA")
corpus() # you should see UNGA in the output table
```

