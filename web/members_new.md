---
layout: page
title: Corporate Members
permalink: /members_new/
---

<section style="margin-bottom: 50px;">
<div class="container" markdown="1">

<style type="text/css">
  .logo_thumbnail {
    padding: .5vw;
    background-color: #fff;
    border-radius: .25rem;
    -webkit-transition: all .2s ease-in-out;
    -o-transition: all .2s ease-in-out;
    transition: all .2s ease-in-out;
    max-width: 100%;
    height: auto;
  }
</style>

<div class="section-title" markdown="1">
## Corporate Members
</div>

<div class="row">
{% assign logos = site.data.logos | where: "category", "corporate" | sort: "alt" %}
{% for item in logos %}
  <div class="logo_thumbnail col-lg-3 col-md-3 col-sm-4 col-xs-6">
    <a href="{{item.link}}"><img class="img-thumbnail " src="/assets/images/logos/{{item.logo}}" alt="{{item.alt}}"></a>
  </div>
{% endfor %}
</div>

<div class="section-title" markdown="1">
## Institutions of Individual Members
</div>

<div class="row">
{% assign logos = site.data.logos | where: "category", "individual" | sort: "alt" %}
{% for item in logos %}
  <div class="logo_thumbnail col-lg-3 col-md-4 col-sm-4 col-xs-6">
    <a href="{{item.link}}"><img class="img-thumbnail " src="/assets/images/logos/{{item.logo}}" alt="{{item.alt}}"></a>
  </div>
{% endfor %}
</div>

</div>
</section>