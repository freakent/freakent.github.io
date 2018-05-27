---
layout: post
status: draft
title: Filtering unnecessary events in a time window using CQL
author:
  display_name: martin
  login: martin
  email: martin@freakent.co.uk
  url: http://www.freakent.co.uk
author_login: martin
author_email: martin@freakent.co.uk
author_url: http://www.freakent.co.uk
wordpress_id: 845
wordpress_url: http://www.freakent.co.uk/?p=845
date: '2013-10-23 20:47:21 +0100'
categories:
- Uncategorized
tags: []
comments: []
---
<p>Content of the new Post:<br />
The following should work -</p>
<p>Let S be the input stream and let schema of S have an attribute "type". Then,</p>
<p>select T.Ac1 from S<br />
   MATCH_RECOGNIZE (<br />
       PARTITION BY type<br />
       MEASURES<br />
           A.c1 as Ac1<br />
       PATTERN(A)<br />
       DEFINE<br />
           A as (prev(A.c1,1,60*10^9) is null)<br />
   ) as T</p>
<p>What the above query does is it outputs the input event if there is no previous event of the same type (the PARTITION BY clause creates 1 logical sub-stream per type) that was received within the last 60 seconds (expressed in nanos)</p>
<p>To view the thread, visit:<br />
https://forums.oracle.com/forums/thread.jspa?forumID=820&threadID=2395698</p>
<p>To view the message, visit:<br />
https://forums.oracle.com/forums/thread.jspa?threadID=2395698&messageID=10367357#10367357 </p>
