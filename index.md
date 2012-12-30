---
layout: default
title: Home
---


{% for post in site.posts %}
  {% capture assignment_date %} {{ post.date | date: "%Y-%m-%d" }} {% endcapture %}
  {% capture subtraction %} {{ post.date | date: "%Y%m%d" | minus: site.upto }} {% endcapture %}
  {% if subtraction contains "-" %}
    {% if post.category contains 'week' %}

    {% capture anchor %} {{post.title | downcase | replace: ' ', '-'}} {% endcapture %}
<h1 id="{{anchor | remove: ' '}}">{{post.title}}</h1>
<p>{{post.slug}}</p>
{{ post.content }}

    {% endif %}
  {% endif %}
{% endfor %}


{% comment %}

# Welcome

If you have never explored electricity and electronics before, and you enjoy making things, then this course was designed for you. We designed this course with <strike>three</strike> four long-term goals in mind:

1. **We want to be safe in everything we do**. <br/>
  People who do not respect electricity are dangerous to themselves and others. Safety is the most important thing you can learn in *Craft of Electronics*.
1. **We want to build things**. <br/>
  We will learn to think with our hands as we build electrical systems; if you can hold a pencil, you can build electronics.
1. **We want to design solutions to our own problems**. <br/>
  We study electricity and electronics because it enables us to better understand ourselves and our environment---and control that environment as well.
1. **We want to communicate our efforts with excellence.** <br/>
  We design, we build, and we **share**. That communication, be it via text, live presentation, or video, must be clearly articulated and professional in nature.


Throughout the course, we will highlight when we are learning about **safety**,
focusing on **building**, or **designing** circuits and systems.

{% endcomment %}
