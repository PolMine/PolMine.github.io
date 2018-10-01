---
layout: post
title:  "polmineR version 0.7.10 at CRAN"
date:   2018-10-01
author: Andreas Blätte
categories: Posts
tags: news
---

<script>
  function resizeIframe(obj) {
    obj.style.height = obj.contentWindow.document.body.scrollHeight + 'px';
  }
</script>

# New polmineR version v0.7.10 at CRAN.

A few days ago (on September 18, to be exact), a new version of *polmineR* made it to [CRAN](https://CRAN.R-project.org/package=polmineR). See the [NEWS file](https://github.com/PolMine/polmineR/blob/master/NEWS.md) for a full report on what is new. In this post, I want to highlight what I see as the most important set of changes: With polmineR v0.7.10, it is much more convenient than before to include [htmlwidgets](https://www.htmlwidgets.org/) in Rmarkdown documents that are derived from the analysis of keywords-in-context, or cooccurrences.

To grasp the added value of being able to include htmlwidgets in Rmarkdown documents, you might want to have a look at the (updated) vignette of the polmineR package. If you have already installed polmineR version 0.7.10 (`install.packages("polmineR")`), proceed as follows.


{% highlight r %}
vignette(topic = "vignette", package = "polmineR")
{% endhighlight %}

Alternatively, the vignette is online at the [polmineR documentation website](https://polmine.github.io/polmineR/) generated using [pkgdown](https://CRAN.R-project.org/package=pkgdown). 

When scrolling through the document, you will see several interactive tables. A first set shows the results of calling the `kwic()`-method. Then you have a table with the results of the `cooccurrences()`-method. Technically, these tables use the [DataTables JavaScript library](https://datatables.net/). Earlier versions of polmineR had already generated this output format in an interactive R session. This is not difficult, using the `datatable()` function of the [DT package](https://rstudio.github.io/DT/). Yet the advantage of including this output in html documents may be considerable: Very often, the tables resulting from text analysis have many, many rows and are far too big to be included in a research report. If you have a browsable table with pagination, making your research transperant and reproducible is much easier, be it in a final research report, or in some intermediary document.

In the polmineR package, you now get a htmlwidget when the `show()`-method is invoked on a `kwic`-object, or a `cooccurrences`-object. For the sake of keeping the explanation simple, it is as simple as follows to include an htmlwidget resulting from calling the `kwic()`-method.


{% highlight r %}
library(polmineR)
kwic("REUTERS", query = "oil")
{% endhighlight %}

<br/>
<iframe title="KWIC htmlwidget" width="100%"  src="../../../../assets/2018-10-01-Release-of-polmineR-v0.7.10/kwic_widget_1.html" frameborder="0" scrolling="no" onload="resizeIframe(this)" padding="0em !important" margin-left="0 !important"></iframe>

The only small technicality required is to include `render = polmineR::knit_print` in the chunk options. Having implemented the `knit_print()`-method is the basis for the convenient inclusion of htmlwidgets in Rmarkdown documents using polmineR. The same works when calling the `cooccurrences()`-method.


{% highlight r %}
cooccurrences("REUTERS", query = "oil")
{% endhighlight %}

<br/>
<iframe title="KWIC htmlwidget" width="100%"  src="../../../../assets/2018-10-01-Release-of-polmineR-v0.7.10/cooccurrences_widget.html" frameborder="0" scrolling="no" onload="resizeIframe(this)" padding="0em !important" margin-left="0 !important"></iframe>

The standard number of rows for the `datatables`-htmlwidget is to display 10 rows. Sometimes this may be too much, particularly when you want to include the table in a set of slides. You can adjust the number of rows shown by setting the `polmineR.pagelength` option. See the following example


{% highlight r %}
options("polmineR.pagelength" = 3L)
kwic("REUTERS", query = "oil")
{% endhighlight %}

<br/>
<iframe title="KWIC htmlwidget" width="100%"  src="../../../../assets/2018-10-01-Release-of-polmineR-v0.7.10/kwic_widget_2.html" frameborder="0" scrolling="no" onload="resizeIframe(this)" padding="0em !important" margin-left="0 !important"></iframe>


There is one more thing. In addition to the enhanced functionality to include htmlwidgets in Rmarkdown documents, the `highlight()`-method and the `tooltips()`-method have been implemented for `kwic`-objects. 


{% highlight r %}
library(magrittr)
dictionary <- c("crude", "barrel", "company", "product")
weights <- 1:4
kwic("REUTERS", query = "oil") %>% 
  highlight(yellow = dictionary) %>% 
  tooltips(setNames(dictionary, 1:4))
{% endhighlight %}

<br/>
<iframe title="KWIC htmlwidget" width="100%"  src="../../../../assets/2018-10-01-Release-of-polmineR-v0.7.10/kwic_widget_3.html" frameborder="0" scrolling="no" onload="resizeIframe(this)" padding="0em !important" margin-left="0 !important"></iframe>


Apart from highlighting the terms in our `dictionary`-character vector, we have also added tooltips to these terms. Obviously, the example chosen in is not substantively interesting. But being able to highlight terms and to inspect tooltips with term weights offers a simple yet effective way to validate how a dictionary may work. Think about a dictionary with term weights  as it is often used for sentiment analysis, for instance.

Another post should explain how this works. To conclude this post, I would like to thank the participants of the 'methods training'-course I taught in the political science BA at the University of Duisburg-Essen in the academic year 2017/18. Many improvements of the polmineR package have resulted from their feedback. They helped me to make substantial progress towards a robust installation mechanism, and they inspired me to develop slides with a certain level of interactivity: This is why polmineR v0.7.10 is called "Bachelor’s Delight". (Oops, by accident, there is a historic ship called such, see the [respective article on Wikipedia](https://en.wikipedia.org/wiki/Edward_Davis_(buccaneer)).)

So thanks to my students of their endurance when being exposed to my experiments!
