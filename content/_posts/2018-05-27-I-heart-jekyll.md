---
layout: post
title: I ❤️ Jekyll
categories:
  - Software Development

---
After a few years of neglect and paying Digital Ocean $5/month+tax for hosting
by Wordpress site, I decided it was time for a change. I have been using the
static website generator, [Jekyll], at work to power a couple of websites and I
just love it's simplicity. [Jekyll] is also what powers [GitHub Pages] making
it really simple to host really great looking blog totally for free on GitHub.
There are plenty of examples of Jekyll sites and blogs hosted on [GitHub Pages]
just a few clicks away on Google, but I thought I'd share some of the details of
how I set up this site that I didn't find elsewhere.
<!--more-->
Firstly, some of the things I love about [Jekyll]:
- *[Markdown]*: It's great being able to just type words and add simple
formatting, but I'm still able to sprinkle in a few HTML tags if needed. I can
even rely on my text editor (currently Atom) to check spelling as I type.
- *Git Workflow*: Unlike my Wordpress site I can write content any where with
just a simple text editor then push changes to a Git repository next time I'm online
(I'm currently writing this 37,000 feet somewhere above the Indian Ocean). With
[GitHub Pages] pushing to the Master branch of my repository automatically
publishes the latest version of the site. Similarly, on my other Jekyll sites I
have started using Git Hooks to invoke build and deploy scripts automatically
when the Master Branch is pushed.
- *[Liquid]*: Scripting in Liquid is good enough to create some pretty flexible
layouts. See below for more about Liquid and Arrays.
- *Posts, Collections & Data*: Jekyll's built in ability to create pages and
content from data files and YAML is really powerful.

The Challenges
Moving my blog from Wordpress to [Jekyll] + [GitHub Pages] wasn't all easy
though, there were a few challenges I had to solve. Rather than describe them
all here and make one long enormous post, I'll create separate posts about
each and include links here.
- [Blog Comments with Staticman]

GitHub Pages and Jekyll plug-ins
GitHub has a fixed, limited set of Jekyll plugins that it supports and will not
execute any custom or 3rd party plug-ins. I assume they want to avoid people
running custom code on their servers. I never felt the need to use Jekyll
Plug-ins on the other Jekyll sites I have built so I didn't think this would be
much of an issues, but there was more than one occasion where
a custom liquid filter (e.g. for processing a Jekyll data hash table) or Jekyll
generator (e.g. for generating category pages) would have made things simpler.
So far I have found work arounds but I keep wondering whether I will have to
switch to generating my site elsewhere then pushing the generated site to GitHub.
I really want to avoid that but we'll see how it goes.



[Jekyll]:http://jekyllirb.com
[GitHub Pages]:http://github.com
[Markdown]:www.blah
[Blog Comments with Staticman]:www.sddsfds
