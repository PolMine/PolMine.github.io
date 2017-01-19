---
layout: post
title:  "Pride and Prejudice: Finding Westerwelle's speech"
date:   2017-01-19
author: Andreas Blätte
categories: Posts
tags: news
---

## Pride and Prejudice: Finding Westerwelle's speech

In a seminar on policy responsiveness I am teaching with my colleague Susanne Pickel, we explore the relationship between the political supply of policies, and the substance of policies citizens demand for. Before proceeding to a quantitative analysis, we wanted to do a qualitative content analysis of speeches in the German Bundestag. So we were looking for speeches that were particularly important and interesting.

I had a speech in mind given by Guido Westerwelle in the German Bundestag, when he talked about his pride ("Stolz") in Germany. In his speech, he argued polemically against the prejudice those would meet that are proud of Germany. The follow-up to his speech in public media was an uproar.

Yet as that was approximately more than fivteen years ago and as I am human - I had only a rough idea when that speech was given exactly. Enters a corpus of plenary protocols and the polmineR package. I need five lines of code to perform that search, and to find what I am looking for.

First, I load the polmineR package; I want to use the functionality of the package to assist my search. 


{% highlight r %}
library(polmineR)
{% endhighlight %}

Second, I create a 'partition', i.e. a subcorpus of the 'PLPRBT' corpus, a corpus of all plenary debates in the German Bundestag (1994-2016). The criterion I apply is that the name of the speaker should be 'Guido Westerwelle'. Third, I inspect the context of all mentions of 'Stolz' (i.e. pride) in the speeches given by Guido Westerwelle. To do that, I use the 'kwic'-method (for keyword-in-context) that offers a simple concordancing tool included in the package. As I want to find out when Westerwelle spoke about 'Stolz' in such a controversial manner, I tell the 'kwic'-method to supply me with the date as relevant metadata in the output (meta = "speaker_date").


{% highlight r %}
westerwelle <- partition("PLPRBT", speaker_name = "Guido Westerwelle", type = "plpr")
kwic(westerwelle, "Stolz", meta = "speaker_date", left = 15, right = 15)
{% endhighlight %}

This is what I see in RStudio:

![Screenshot1](/assets/screenshot_rstudio_kwic_westerwelle.jpg)

Aha. The first concordance line really seems to be a chunk of the speech that sparked off so much controversy. So based on the partition with all speeches given by Guido Westerwelle, I generate a partition only with the speeches on March 16, 2001. To inspect the result, I apply the read-method on the new partition.


{% highlight r %}
westerwelle <- partition(westerwelle, speaker_date = "2001-03-16", type = "plpr")
read(westerwelle)
{% endhighlight %}

I the South-Eastern viewer pane of RStudio, I can read the speech. 

![Screenshot2](/assets/screenshot_rstudio_read_westerwelle.jpg)

Very good - that's exactly what I was looking for! Admittedly, there are technical preconditions to use polmineR for performing the kind of search I described here. But as you recycle these lines of code, you will be much, much faster to query procotols (or any other kind of material) than with official query engines. And something I did not mention here: Queries might also use the CQP syntax, a powerful option official search engines would not offer.
