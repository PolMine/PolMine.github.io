---
layout: post
title:  "GermaParl v1.5.1 'Drunken Sailor' Released"
date:   2020-07-28
author: Andreas Blätte
output: 
  md_document:
    preserve_yaml: true
categories: Posts
tags: news
---

GermaParl v1.5.1 ‘Drunken Sailor’ Released
==========================================

The [GermaParl](https://CRAN.R-project.org/package=GermaParl) package is
back at CRAN. The most recent version (v1.5.1) that has just been
released is the first one I expect to pass all checks on all systems. If
nothing goes wrong, it will be the first fully portable version of the
GermaParl R package.

Following the formular ‘less is more’ has been a precondition for that.
I guess the song [“What Shall We Do with the Drunken
Sailor”](https://en.wikipedia.org/wiki/Drunken_Sailor) is widely known:
How do you get somebody, who has enjoyed too much previously sober
again? Metaphorically, this is what GermaParl has gone through now.
Functions to add further annotation layers were actually quite generic
have been removed from the GermaParl package, they have been moved to
the (GitHub-only) package
[polmineR.misc](https://github.com/PolMine/polmineR.misc). Remaining
dependencies on the data.table and the RcppCWB package have also been
removed.

The GermaParl package still offers the documentation of the data and a
very convenient download mechanism for the full GermaParl corpus. That’s
one rationale for the CRAN release. But more importantly from a
technical point of view, it includes some sample data. A next step will
be to use the sample data included in the GermaParl package in the
polmineR package, which can thus be turned a leaner package.

And GermaParl is a much leaner package now, too. GermaParl is not a
drunken sailor any more with a terrible hangover (superfluous functions
and dependencies). As I believe, the package is quite sober now. Enjoy!
