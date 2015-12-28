# Burst
Give an energy burst to your Jekyll workflow :bowtie:

### Setup
Burst is a Ruby gem, so run:

```
$ git clone git@github.com:dottorblaster/burst.git
$ cd burst && gem build && gem install *.gem
```

One day I'll push this gem to rubygems.org. Today is not that day. :sunglasses:

### Example usage
```
$ burst --title "Sample Post"
---
layout: post
status: publish
published: true
title: Sample Post
date: 2015-12-28 14:49:38 +0100
categories:
- Category
tags:
- first_tag
- second_tag
---
```

Just fire up your CLI, and call Burst with a title argument. That argument will be your post title.

