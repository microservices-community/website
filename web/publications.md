---
layout: page
title: Publications
permalink: /publications/
---

<section style="margin-bottom: 50px;">
<div class="container">
<div class="row">
<div class="col-xs-12" markdown="1">

<div class="section-title" markdown="1">
## Publications
</div>

One of the main goals of the Microservices Community is to disseminate knowledge; supporting experts and researchers in meeting, presenting their experiences and ideas, and discussing them within the community.

This page contains an archive of the material published with the support of the Microservices Community.

<div class="col-xs-offset-2 col-xs-8">
<div class="row">
  {% for publication in site.data.publications %}
  <div class="thumbnail">
      <a target="_blank" href="{{ publication.link }}"><img src="/assets/images/publications/{{ publication.thumbnail }}"></a>
      <div class="caption">
        <a target="_blank" href="{{ publication.link }}">
          <h3>{{ publication.title }}</h3>
        </a>
        <p>{{ publication.description }}</p>
      </div>
    </div>
    {% endfor %}
</div>
</div>
</div>
</div>
</div>
</section>