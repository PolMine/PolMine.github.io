---
layout: post
title:  "polmineR version 0.7.9 at CRAN"
date:   2018-07-16
author: Andreas Blätte
categories: Posts
tags: news
---

# New polmineR version v0.7.9 ("Jeanne d'Arc")!

## Major changes:

The most visible change of polmineR v0.7.9 may be that the package moves to a snake_case coding style. This is increasingly the state-of-the-art of newly developed R packages, and feels much more intuitive when working with the arguments 's_attributes' and 'p_attributes' (rather than pAttributes, and sAttributes). Functions/methods are fully backwards compatible. Old code should is not supposed to break.

The package now uses a session registry directory, which is a subdirectory of the temporary session directory. This has become mandatory, because CRAN policies do not allow to reset paths within a package, once it has been installed. But it is very useful, because now, switching registry directories can be avoided. The `use()`-function will now add the corpora in a R data package to the session registry. So this is a good start to work with multiple corpora wrapped in various packages. This involves a set of new functions:

* A (new) `registry_move()`-function is used to copy files to the tmp registry;
* The (new) `registry()`-function will get the temporary registry directory;

A set of changes makes working with `bundle` objects more versatile and robust:

* There is a new `as.list()`-method for bundle objects, to access the list in the slot `objects`;
* `as.bundle()` is more generic now, so that any kind of object can be coerced to a bundle now;
* The `as.speeches()`-method turned into function that allows a partition or a corpus as input;

The new version upgrades the `count`-class. So the `count()`-method will serve as a constructor for a count object, if no query is provided. This is particularly useful when working with `count_bundle`-objects. 


## Minor changes:

* There is a new `is.partition()`-function (a logical check);
* A new argument 'type' has been added to `partition_bundle()`-method;
* A new method `get_type()` introduced to make getting corpus type more robust.
* A new `partition_bundle()`-method for `partition_bundle`-objects has been introduced;


## Bug fixes:

* `s_attributes()` for partition-objects in line with RcppCWB requirements (no negative values of strucs);
* `count()` repaired for muliple p-attributes;
* bug removed causing a crash for `as.markdown()`-method when cutoff is larger than number of tokens;
* a bug removed that has prevented the `name<-` method to work properly for bundle objects
* for `count()` for `partition_bundle`-objects, the column 'partition' will be a character vector now (not factor)
* bug removed that has caused a crash when cutoff is larger than number of tokens in a partition when calling get_token_stream

Enjoy!
