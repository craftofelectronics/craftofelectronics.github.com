---
title: Resources
layout: default
category: infra
---

# Course Resources

<table>
{% for post in site.posts %}
{% if post.category contains 'infra' %}

<tr>
  <td width="50%"><a href="{{site.base}}{{post.url}}/">{{post.title}}</a></td>
  <td width="10%"><small> </small></td>
  <td width="50%"><span style="font-size: 10pt;">{{post.slug}}</span></td>
</tr>

{% endif %}
{% endfor %}
</table>

<!--
{% for post in site.posts %}
  {% if post.layout contains 'infra' %}
  <h2 id="{{post.url}}">{{post.title}}</h2>
  <p>{{post.slug}}</p>
  <p><a href="{{site.base}}{{post.url}}/">Read More...</a></p>      
  {% endif %}
{% endfor %}
-->