---
layout: page
title: Corpora
permalink: /corpora/
---

The PolMine Project has two related key activity areas to prepare and share textual data:

- Corpora of plenary protocols;
- Corpora and further language resources for migration and integration research.

The project derives its thrust from political science, but we understand we work with large-scale *linguistic* data. So we use tools and approaches for processing and managing data from corpus linguistics, computational linguistics and information science. 

Based on an initial "XMLification" of raw data (pdf, html, txt documents), we prepare linguistically annotated versions of the corpora that are imported into the [Corpus Workbench (CWB)](http://cwb.sourceforge.net/). Whenever possible, we deposit tarballs with the indexed versions of corpora with [Zenodo](https://zenodo.org/), the open science data repository of our choice.

To offer access to corpora with restricted access, we host them on an OpenCPU server. At this stage, this is relevant for the MigPress corpus of migration- and integration-related newspaper reports.

For publicly available corpora, R users can use a convenient installation mechanism included in the [cwbtools](https://cran.r-project.org/web/packages/cwbtools/index.html) package, which is available at CRAN. We recommend to use the [polmineR](https://CRAN.R-project.org/package=polmineR) R package for working with CWB indexed corpora. The polmineR package also includes functionality for remote access to restricted-access corpora.


---

<span style="font-size: 20px;display: inline !important;vertical-align: bottom; padding-right: 1em; font-weight: bold;">GermaParl</span><a style="display: inline !important;" href="https://github.com/PolMine/GermaParl"><img style="display:inline !important;width:20px !important; height:20px;" src="{{ "/assets/icons/mark-github.svg" | prepend: site.baseurl }}"></a>    <a href="https://creativecommons.org/licenses/by-nc-sa/4.0/"><img style="display: inline !important;height: 20px; width: unset !important;" src="https://img.shields.io/badge/License-CC%20BY--NC--SA%204.0-lightgrey.svg"/></a>  <a href="https://doi.org/10.5281/zenodo.1312551"><img src="https://zenodo.org/badge/DOI/10.5281/zenodo.1312551.svg" alt="DOI" style="display: inline !important;height: 20px; width: unset !important;"></a>
  
GermaParl is a consolidated high-quality corpus of plenary debates in the German Bundestag that meets standards for social science research. At this stage, the corpus includes all plenary protocols that were published by the German Bundestag between 1996 and 2016. The naming of GermaParl is inspired by the [EuroParl](https://www.statmt.org/europarl/) and [DutchParl](https://dare.uva.nl/search?identifier=f12cd0b5-96d5-4fb9-b4f5-a3de0c2298e2) corpus. The GermaParl corpus can be retrieved as follows:

- The [GermaParlTEI](https://github.com/PolMine/GermaParlTEI) repository at GitHub offers XML/TEI versions of the corpus. 
- A tarball with the linguisitcally annotated and CWB indexed version of the corpus is available via [Zenodo](https://doi.org/10.5281/zenodo.3742113).
- The [GermaParl](https://CRAN.R-project.org/package=GermaParl) R package published with CRAN includes a small subset of GermaParl for demonstration purposes and convenience functionality to download the full corpus from Zenodo.

Using the GermaParl R package, it just takes two lines of R code to install the corpus:

```r
install.packages("GermaParl")
GermaParl::germaparl_download_corpus()
```

---

<span style="font-size: 20px;display: inline !important;vertical-align: bottom; padding-right: 1em; font-weight: bold;">UNGA</span>  <a href="https://creativecommons.org/licenses/by/4.0"><img style="display: inline !important;height: 20px; width: unset !important;" src="https://img.shields.io/badge/License-CC%20BY%204.0-lightgrey.svg"/></a> <a href="https://doi.org/10.5281/zenodo.3831472"><img src="https://zenodo.org/badge/DOI/10.5281/zenodo.3831472.svg" alt="DOI" style="display: inline !important;height: 20px; width: unset !important;"></a>

The corpus of the verbatim meeting records of the *United Nations General Assembly* (UNGA) is the language resource with the most global outlook we have prepared. Our primary intention when preparing the corpus was to have a resource for training purposes that is genuinely international and will not convey any preference for any nation on earth. 

The UNGA convenes delegates appointed by states, which is a significant difference from elected representatives in parliaments. The [website of the Dag Hammarskjöld Library](https://research.un.org/c.php?g=98268&p=636540) describes the practices and systematics of record keeping in some detail. Due to the poor quality of optical character recognition (OCR) of documents issued before 1994, only documents starting from 1994 (the 49th session) entered the UNGA corpus. At this stage, documents up to the 79th meeting of the 72nd session (20 March 2018) are covered. 2585 pdf files were processed to build the UNGA corpus.

The UNGA corpus is deposited with [Zenodo](https://doi.org/10.5281/zenodo.3831472). To install the corpus, proceed as follows.  

```r
cwbtools::corpus_install(doi = "10.5281/zenodo.3831472")
```

---

<span style="font-size: 20px;display: inline !important;vertical-align: bottom; padding-right: 1em; font-weight: bold;">MigParl</span><a href="https://creativecommons.org/licenses/by/4.0"><img style="display: inline !important;height: 20px; width: unset !important;" src="https://img.shields.io/badge/License-CC%20BY%204.0-lightgrey.svg"/></a> <a href="https://doi.org/10.5281/zenodo.3872263"><img src="https://zenodo.org/badge/DOI/10.5281/zenodo.3872263.svg" alt="DOI" style="display: inline !important;height: 20px; width: unset !important;"></a>

MigParl is an indexed and linguistically annotated corpus of speeches on migration and integration affairs in Germany’s regional parliaments (“Landtage”). The corpus has been prepared in the MigTex Project, which was part of a larger joint project to establish the research community of the German Centre for Migration and Integration Affairs ([DeZIM / Deutsches Zentrum für Migration and Integrationsforschung](https://dezim-institut.de/)). Funding awarded by Germany’s Federal Ministry for Family Affairs, Senior Citizens, Women and Youth (BMFSFJ / Bundesministerium für Familie, Senioren, Frauen und Jugend) is gratefully acknowledged.

Consult the [MigParl Website](https://polmine.github.io/MigParl/) to learn more about the corpus, its preparation and usage.

The corpus is stored on Zenodo and can be downloaded and installed as follows: 

```r
cwbtools::corpus_install(doi = "10.5281/zenodo.3872263")
```
---

<span style="font-size: 20px;display: inline !important;vertical-align: bottom; padding-right: 1em; font-weight: bold;">ParisParl</span><a href="https://creativecommons.org/licenses/by/4.0/"><img style="display: inline !important;height: 20px; width: unset !important;" src="https://img.shields.io/badge/License-CC%20BY%204.0-lightgrey.svg"/></a> <a href="https://doi.org/10.5281/zenodo.3819374"><img src="https://zenodo.org/badge/DOI/10.5281/zenodo.3819374.svg" alt="DOI" style="display: inline !important;height: 20px; width: unset !important;"></a>

The ParisParl Corpus comprises all protocols of plenary sessions in the French *Assemblée nationale* between 1996 and 2019. The corpus is built based on pdf documents issued by the *Assemblée nationale*. The *Framework for Parsing Plenary Protocols* (R package [frappp](https://polmine.github.io/frappp_slides/slides_en.html)) has been used to extract structural information from the original text and to prepare an XML version of the corpus (preliminary TEI format). The structural annotation comprises speaker, party affiliation, parliamentary group affiliation, role, legislative period, session, date, interjections, year and agenda item.

As part of the corpus preparation pipeline, the data has been linguistically annotated (using the [TreeTagger](https://www.cis.uni-muenchen.de/~schmid/tools/TreeTagger) and [StanfordNLP](https://stanfordnlp.github.io/CoreNLP)) and imported into the Corpus Workbench (CWB). The linguistic annotation comprises POS-tagging and lemmatization.

This language resource is still very much in development and comes without any guarantees.

The corpus is stored on Zenodo and can be downloaded and installed as follows: 

```r
cwbtools::corpus_install(doi = "10.5281/zenodo.3819374")
```

---

<span style="font-size: 20px;display: inline !important;vertical-align: bottom; padding-right: 1em; font-weight: bold;">AustroParl</span><a href="https://creativecommons.org/licenses/by/4.0"><img style="display: inline !important;height: 20px; width: unset !important;" src="https://img.shields.io/badge/License-CC%20BY%204.0-lightgrey.svg"/></a> <a href="https://doi.org/10.5281/zenodo.3819505"><img src="https://zenodo.org/badge/DOI/10.5281/zenodo.3819505.svg" alt="DOI" style="display: inline !important;height: 20px; width: unset !important;"></a>

The AustroParl Corpus of Parliamentary Debates comprises all protocols of plenary sessions in the Austrian *Nationalrat* between 1996 and 2019. The corpus is built based on pdf documents issued by the *Nationalrat*. The R package [frappp](https://polmine.github.io/frappp_slides/slides_en.html) has been used to extract structural information from the original text and to prepare an XML version of the corpus (preliminary TEI format). The structural annotation comprises speaker, party affiliation, parliamentary group affiliation, role, legislative period, session, date, interjections, year and agenda item.

As part of the corpus preparation pipeline, the data has been linguistically annotated (using the [TreeTagger](https://www.cis.uni-muenchen.de/~schmid/tools/TreeTagger) and [StanfordNLP](https://stanfordnlp.github.io/CoreNLP)) and imported into the Corpus Workbench (CWB). The linguistic annotation comprises POS-tagging and lemmatization.

This language resource is still very much in development and comes without any guarantees.

The corpus is stored on Zenodo and can be downloaded and installed as follows: 

```r
cwbtools::corpus_install(doi = "10.5281/zenodo.3819505")
```

---

<div style="display: inline-block !important; font-size: 20px; text-align: center !important;"><i>Corpora with Restricted Access</i></div>

---

<span style="font-size: 20px;display: inline !important;vertical-align: bottom; padding-right: 1em; font-weight: bold;">MigPress</span>

In the MigTex Project, we prepared MigPress, a corpus with the migration- and integration-related reports  the *Frankfurter Allgemeine Zeitung* (FAZ) and the *Süddeutsche Zeitung* (SZ) published between 2000 and 2018. As the material is licensed and the corpus can not be made freely available, we host the resource on an OpenCPU server. The polmineR package can be used for remote access. 

The MigTex Project was part of a larger project to establish the research community of the German Centre for Migration and Integration Affairs ([DeZIM / Deutsches Zentrum für Migration and Integrationsforschung](https://dezim-institut.de/)). Funding awarded by Germany’s Federal Ministry for Family Affairs, Senior Citizens, Women and Youth (BMFSFJ / Bundesministerium für Familie, Senioren, Frauen und Jugend) is gratefully acknowledged.

Consult the [MigPress Website](https://polmine.github.io/MigPress/) to learn more about the corpus. Please get in touch with us for further information on data access.

---

<span style="font-size: 20px;display: inline !important;vertical-align: bottom; padding-right: 1em; font-weight: bold;">Access to development versions for beta users</span>

We use [Amazon S3](https://aws.amazon.com/s3/) as a cloud storage solution for development versions of corpora that have not yet been published. In this case, data access is restricted to certified beta users and credentials will be required for downloading data. A [gist](https://gist.github.com/ablaette/3c3efa2c0339ae10d3c92c6c5618d1a7) explains the usage of credentials. 