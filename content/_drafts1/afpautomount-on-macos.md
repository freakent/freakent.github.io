---
layout: post
status: draft
title: AFPAutoMount on MacOS
author:
  display_name: martin
  login: martin
  email: martin@freakent.co.uk
  url: http://www.freakent.co.uk
author_login: martin
author_email: martin@freakent.co.uk
author_url: http://www.freakent.co.uk
wordpress_id: 875
wordpress_url: http://www.freakent.co.uk/?p=875
date: '2014-01-11 16:59:02 +0000'
categories:
- Uncategorized
tags: []
comments: []
---
<p>/etc/auto_nas</p>
<p>* &nbsp; &nbsp; &nbsp; -rw,noowners,anonuid=1014,anongid=100,soft,resvport,rsize=32768,wsize=32768 &nbsp; &nbsp; nas:/c/&amp;</p>
<p>/etc/auto_master</p>
<p>#</p>
<p># Automounter master map</p>
<p>#</p>
<p>+auto_master&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; # Use directory service</p>
<p>/net&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; -hosts&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; -nobrowse,hidefromfinder,nosuid</p>
<p>/home &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; auto_home &nbsp; &nbsp; &nbsp; -nobrowse,hidefromfinder</p>
<p>/Network/Servers&nbsp; &nbsp; &nbsp; &nbsp; -fstab</p>
<p>/-&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; -static</p>
<p>/nas&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; auto_nas</p>
