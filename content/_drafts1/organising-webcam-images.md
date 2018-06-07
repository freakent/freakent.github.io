---
layout: post
status: draft
title: Organising Webcam Images
author:
  display_name: martin
  login: martin
  email: martin@freakent.co.uk
  url: http://www.freakent.co.uk
author_login: martin
author_email: martin@freakent.co.uk
author_url: http://www.freakent.co.uk
wordpress_id: 826
wordpress_url: http://www.freakent.co.uk/?p=826
date: '2013-10-22 22:48:55 +0100'
categories:
- Gadgets
tags: []
comments: []
---
<p>Original script<br />
http://www.linuxjournal.com/content/tech-tip-automaticaly-organize-your-photos-date</p>
<p>Getting around operating system inconsistencies.<br />
https://github.com/oneye/installer-creator/issues/1</p>
<p>if [ $(uname) = "Linux" ]; then<br />
    pathCmd="readlink -f"<br />
elif [ $(uname) = "Darwin" ]; then<br />
    pathCmd="stat -f %N"<br />
else<br />
    pathCmd="realpath"<br />
fi</p>
<p>My Script<br />
#!/bin/sh -x</p>
<p># Goes through all jpeg files in current directory, grabs date from each<br />
# and sorts them into subdirectories according to the date<br />
# Creates subdirectories corresponding to the dates as necessary.</p>
<p>for fil in *.jpg  # Also try *.JPG<br />
do<br />
#    datepath="$(identify -verbose $fil | grep DateTimeOri | awk '{print $2 }' | sed s%:%/%g)"<br />
    datepath="$(stat -f "%Sm" -t "%Y/%m/%d" $fil)"<br />
    if ! test -e "$datepath"; then<br />
        mkdir -pv "$datepath"<br />
    fi</p>
<p>    mv -v $fil $datepath<br />
done</p>
