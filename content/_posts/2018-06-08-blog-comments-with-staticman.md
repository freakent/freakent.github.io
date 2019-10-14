---
layout: post
title: Blog Comments with Staticman
categories:
  - Software Development

---
Despite not being good at responding to all Comments on my WordPress Blog (I
blame the fact that I could never get the email notifications to work from
WordPress), I had some good Comments on a number of my posts that I didn't want to
loose. The Jekyll WordPress migration tool copied all the Comments into the
front-matter of each post, so it was easy enough to render them under each blog
post. But the real issue was how do you allow people to post Comments with a static site?
<!--more-->
Most of the big blog sites seem to have switched off Comments and instead rely on
Social Media. I came up with various ideas involving Twitter and Amazon Lambda,
and was about to abandon Comments entirely when I discovered a really elegant
solution in a system call [Staticman].

[Staticman] provides a couple of simple HTTP
API endpoints that create Git Pull requests to add Comment files to your Git
repository inside a Jekyll Collection. That's a really elegant solution to the
problem of Comments, all I have to do to approve a comment is merge the pull
request to my Master branch. GitHub even sends me email notifications so I might
even be better at responding to Comments in the future. Take a look at my
[Staticman config file] if you want to see how I set it up.

Staticman is very flexible in how you want to organise your Comment collection
but I still had the problem of my existing Comments. Rather than treat the old
Comments different to any new Comments I wrote a small script in Ruby to create
comment YAML files in my chosen collection from Jekyll front-matter. Look in the
scripts folder of my sites Git repository if you want to see more.


[Jekyll]:http://jekyllirb.com
[GitHub Pages]:http://github.com
[Staticman]:www.sddsfds
[Staticman config file]:asdsadsa
