---
layout: page
title: Code
permalink: /code/
---

The codebase of the PolMine project is written in the statistical programming language R. R offers a broad range of packages for statistical analysis, great visualisation capabilites, and is widely used by social scientists. The repositories of the PolMine Project at GitHub cover mature packages released at CRAN as well as loose ends. The following packages are the core of the PolMine codebase.

**polmineR:** The polmineR-package follows the design principle of a three-tier architecture. The Open Corpus Workbench (CWB), an indexing and query engine serves as a powerful backend. The syntax of the Corpus Query Processor (CQP) provides powerful abilities to formulate complex queries. Releases of the polmineR package are available at [CRAN](https://cran.r-project.org/web/packages/polmineR/index.html). The package is under active development, and development versions are available via [GitHub](http://www.github.com/PolMine/polmineR). GitHub is also where issues and feature requests can be reported. The documentation of the package is available at the [GitHub Pages](https://polmine.github.io/polmineR) for the repository.

**RcppCWB:** The package RcppCWB is a follow-up on the rcqp package that
has pioneered to expose CWB functionality from within R. Indeed, the
rcqp package, published at CRAN in 2015, offers robust access to CWB
functionality. However, the "pure C" implementation of the rcqp
package creates difficulties to make the package portable to Windows. The
primary purpose of the RcppCWB package is to reimplement a wrapper
library for the CWB using a design that makes it easier to achieve
cross-platform portability. It is available at [CRAN](https://cran.r-project.org/package=RcppCWB) and can be installed
on Windows, macOS and Linux. Development versions are available at [GitHub](https://github.com/PolMine/RcppCWB).
The documentation is available via [GitHub Pages](https://polmine.github.io/RcppCWB/).

**cwbtools:** The cwbtools, available at [GitHub](http://www.github.com/PolMine/cwbtools)
is a companion package to the polmineR package for corpus preparation. One of the main feature of the package is the functionality to create an indexed corpus directly from R data structures, such as data.frames or data.tables. See the [GitHub Pages](https://polmine.github.io/cwbtools) for further information.
