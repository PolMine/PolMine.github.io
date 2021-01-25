---
layout: page
title: Corpora
permalink: /corpora/
---

XML/TEI versions of corpora are publicly available under Creative Commons licenses for non-commercial users either at GitHub, or for cooperation partners through our [GitLab server](https://gitlab.sowi.uni-due.de). GitHub/GitLab offers tools for tracking the differences of versions and comes with a issue tracking system very useful for quality management purposes.

Linguistically annotated versions of corpora that have been indexed and imported into the Corpus Workbench are shipped using R data packages. In combination with the polmineR package, large corpora will work (more or less) out of the box on average computers that everybody can afford. To keep the initial installation size of data packages modest, they only include small sample data and corpus-specific functionality at the outset. Full corpora can then be downloaded from a dedicated webspace. The following corpora are accessible accordingly.

---

<span style="font-size: 20px;display: inline !important;vertical-align: bottom; padding-right: 1em; font-weight: bold;">GermaParl</span><a style="display: inline !important;" href="https://github.com/PolMine/GermaParl"><img style="display:inline !important;width:20px !important; height:20px;" src="{{ "/assets/icons/mark-github.svg" | prepend: site.baseurl }}"></a>    <a href="https://creativecommons.org/licenses/by-nc-sa/4.0/"><img style="display: inline !important;height: 20px; width: unset !important;" src="https://img.shields.io/badge/License-CC%20BY--NC--SA%204.0-lightgrey.svg"/></a>  <a href="https://doi.org/10.5281/zenodo.1312551"><img src="https://zenodo.org/badge/DOI/10.5281/zenodo.1312551.svg" alt="DOI" style="display: inline !important;height: 20px; width: unset !important;"></a>  <a href="https://travis-ci.org/PolMine/GermaParl"><img style="display: inline; width: unset !important;height: 20px;"  src="https://api.travis-ci.org/PolMine/GermaParl.svg?branch=master"/></a>  <a href=""><img  style="display: inline !important; width: unset !important; height: 20px;" src="https://ci.appveyor.com/api/projects/status/github/PolMine/GermaParl?branch=master&svg=true"/></a>
  
<div>
<img src="https://raw.githubusercontent.com/PolMine/GermaParl/master/inst/sticker/hexsticker.png" style="float:right; height=45px; width: unset !important;"/>
GermaParl, a corpus of debates in the German Bundestag, is the flagship corpus of the PolMine Project. At this stage, the corpus includes all plenary protocols that were published by the German Bundestag between 1996 and 2016. Plain text documents issued by the German Bundestag were considered the best raw data format for corpus preparation and were used whenever they are available. For a period between 2008 and 2010, txt files are not available throughout. To fill the gap, pdf documents were processed. The naming of GermaParl is inspired by the EuroParl and DutchParl corpus. XML/TEI version of the corpus are available at GitHub. Consult the GitHub Pages with the package and corpus documentation to learn more. 
</div>

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

---

<span style="font-size: 20px;display: inline !important;vertical-align: bottom; padding-right: 1em; font-weight: bold;">Installing development versions of corpora</span>

We use [Amazon S3](https://aws.amazon.com/s3/) as a cloud storage solution for development versions of corpora that have not yet been published. In this case, data access is restricted and credentials will be required for downloading data. This is a brief explanation how to use credentials for S3 that are issued by the PolMine Project on demand.

For R users, we recommend to use packages developed in the [cloudyr project](https://cloudyr.github.io/) ([aws.signature](https://CRAN.R-project.org/package=aws.signature) and [aws.s3](https://CRAN.R-project.org/package=aws.s3)) for managing credentials and downloading data from S3. 

Please note that putting hard-coded credentials into an R or Rmd file with your analysis is bad practice. Credentials needed for data access should be put into the default file applicable for your system:

  - `~/.aws/credentials` (Linux, macOS)
  - `C:\Users\USERNAME\.aws\credentials` (Windows)

The content of the file should look as follows (for further explanations, see [this AWS Security Blog](https://aws.amazon.com/de/blogs/security/a-new-and-standardized-way-to-manage-credentials-in-the-aws-sdks/)):

```sh
[default]
aws_access_key_id = ABCDEFGHIJKLMNOPQRSTUVZ
aws_secret_access_key = 12345667890
```

The directory for the credentials file does not exist by default. Use the following code to create the `.aws` directory and the `credentials` file if necessary.

```r
library(aws.signature)
credentials_file <- aws.signature::default_credentials_file()
if (!dir.exists(dirname(credentials_file))){
  dir.create(dirname(credentials_file))
}
if (!file.exists("~/.aws/credentials")){
  writeLines("[default]", con = "~/.aws/credentials")
}
```

Note that directories starting with a dot (".") are not visible by default. So you do not necessarily see the `.aws` directory in the  file browser of your default text editor. We recommend to open the credentials file in RStudio by calling `rstudioapi::navigateToFile()`.

```r
rstudioapi::navigateToFile(credentials_file)
```

Edit the file, save the result and close the file when you are finished. To check that credentials are present and can be processed, run the following line of code:

```{r}
aws.signature::read_credentials()
```

Given that credentials are available, the following code will download and install a corpus on your system using functionality of the [cwbtools](https://cran.r-project.org/web/packages/cwbtools/index.html) package. Note that it may involve creating the necessary directory structure for CWB corpora. A user dialogue will assist you to do this. Make sure you insert the correct corpus ID and version number in the code.

```r
library(aws.s3)
library(cwbtools)

corpus <- "anycorpus"
version <- "0.0.1"
corpus_tarball <- sprintf("%s_%s.tar.gz", corpus, version)
corpus_tarball_local_tmp <- file.path(tempdir(), tarball)

save_object(
  object = file.path("corpora/cwb", corpus, corpus_tarball),
  file = corpus_tarball_local_tmp,
  bucket = "polmine",
  region = "eu-central-1",
  show_progress = TRUE
)

cwbtools::corpus_install(tarball = corpus_tarball_local_tmp)
```

To check that the newly installed corpus is present, check whether it shows up in the list of corpora that you will see when running the following two commands.

```r
library(polmineR)
corpus()
```

For beta versions of corpora, your feedback is even more important than for more mature and released data. Thanks for helping to improve data quality!