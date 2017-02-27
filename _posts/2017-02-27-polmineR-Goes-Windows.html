---
layout: post
title:  "Finally: Using polmineR on Windows"
date:   2017-02-27
author: Andreas Blätte
categories: Posts
tags: news
---
  

# Finally: Using polmineR on Windows

I have been asked often (i.e. very often), whether the polmineR package can be used on Windows machines. For many years, my answer has been: I am very sorry, but I do not know a way to make that work. It was a Unix only package. The polmineR-package relies on the rcqp package, and there is no way I would know to get the rcqp package installed on Windows, due to two C libraries that would be missing there (pcre and glib).

That restriction has tormented my mind for a long time. Today, I am very happy to be be able to announce: There is a simple way for non-technical Windows users to solve the problem. There is way to get the rcqp package installed, I do not think it is difficult at all, polmineR can now be installed easily on Windows machines, too.

All that it takes now is to use a slight modification of the install.packages-mechanism. So this is what you need to do from the R shell:


{% highlight r %}
install.packages("rcqp", repo = "https://polmine.github.io/drat", type = "binary")
install.packages("polmineR", repo = "https://polmine.github.io/drat", type = "binary")
{% endhighlight %}

Installing polmineR will require some dependencies that may not necessarily be present, taking up to a few minutes. Afterwards check whether the package can be loaded.


{% highlight r %}
library(polmineR)
{% endhighlight %}

Please note that rcqp/polmineR will look for the CORPUS_REGISTRY environment variable that indicates the directory of the CWB registry. Standardized text files in that directory describe the corpus. If that environment variable is not set, the quick remedy is to use the \code{Sys.setenv} command. Ready to go to work with the CWB corpora you have!


# To explain: Offering binary packages is the solution 


Admittedly, I could have come across the solution a good deal earlier. A well-established way to distribute R packages for Windows is to offer package binaries. This means that any code that needs to be compiled is already compiled. All kinds of utilities and tools that are not conventionally present on Windows machines, are not required if you distribute packages as binaries.

If, as in our scenario, it is fundamentally difficult to compile a package on a Windows computer, the recommended way is to "cross compile"" on a Unix machine. This is not the kind of business I am acquainted with. But I was extremely happy that Bernard Desgraupes and Sylvain Loiseau, the authors of the rcqp package, have done that already and offer the compiled C libraries for Windows their rcqp package needs (*.dll-files) at R-Forge.

From that point, I have modified the rcqp package slightly. The dll files are included, and I changed the procedure when loading the package (file zzz.R). The binary is then generated from the command line as follows:


{% highlight sh %}
R CMD build polmineR.rcqp --no-build-vignettes --no-manual
R CMD INSTALL --build rcqp_0.4.tar.gz
{% endhighlight %}

The resulting binary package is a zipped file called \code{rcqp_0.4.zip}. Using Dirk Eddelbuettel's drat package, I incorporate that binary package into the drat archive I offer at the GitHub presence of the PolMine Project. And that's the place from where you can install the rcqp package using the command given in the intro.

As I realized the usefulness of binaries, that's how I proceeded further. The polmineR package is not yet available as a Windows compatible package at CRAN. To exploit the ease of installing binary packages from a drat repository, I prepared the zipped binary version of the polmineR. So here we are, polmineR can be installed from there, too.


# Sequel: Live is easier for MacOS users now, too

It is fair to say that installing polmineR has neither been particularly easy for Mac users. Installation requires some command line usage. As I came to like binaries, I prepared a package binary for the rcqp package for MacOS. So here is a new quick way to install things:


{% highlight r %}
install.packages("rcqp", repo = "https://polmine.github.io/drat", type = "binary")
install.packages("polmineR")
{% endhighlight %}


# Acknowledgements

I tried, but I did not manage to cross-compile rcqp myself. Bernard Desgraupes and Sylvain Loiseau explain the procedure in great detail. Once again I realize and acknowledge that care and mastery they have invested into the rcqp package. Their admirable work is gratefully acknowledged!
