---
layout: default
title: Announcements
---

# Announcements

Instead of sending emails, course announcements will be made here. You can use [If This Then That](http://ifttt.com/) to follow the course Twitter feed ([@craftoe](http://twitter.com/craftoe)), or you can follow the [course RSS feed](http://craftofelectronics.org/atom.xml). 

Whenever a new announcement is made, word of it will go out on Twitter using the hashtag <code>#ann</code>.

<ul>
{% for post in site.posts | sort | reversed %}
   <li><strong><a href="{{site.url}}/{{ post.url }}">{{ post.title }}</a></strong> 
   (Posted on {{ post.date | date: "%A, %B %d, %Y" }})
   <br/> 
   {{ post.summary }} </li>
 {% endfor %}
</ul>
