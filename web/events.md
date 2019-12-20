---
layout: page
title: Events & Activities
permalink: /events/
redirect_from:
  - /e/amp2020
  - /e/amp2020/
  - /e/microservices2020
  - /e/microservices2020/
  - /e/microservices2019
  - /e/microservices2019/
---

<section>
<div class="container">
<div class="row">
<div class="block">
<div class="col-xs-12" markdown="1">
<div class="text-justify col-xs-12" markdown="1">
<div class="section-title" markdown="1">
## Events
</div>

<strong>Upcoming Events</strong>
<ul>
{% for event in site.data.events.upcoming %}
<li>
  <a href="{{ event.link }}">
  {{ event.title }}
  </a>
  {% if event.comment %}
  <span class="small">{{ event.comment }}</span>
  {% endif %} 
  - {{ event.date }}
</li>
{% endfor %}
</ul>

<strong>Past Events</strong>
<ul>
{% for event in site.data.events.past %}
<li>
  <a href="{{ event.link }}">
  {{ event.title }}
  </a>
  {% if event.comment %}
  <span class="small">{{ event.comment }}</span>
  {% endif %} 
  - {{ event.date }}
</li>
{% endfor %}
</ul>

<div style="margin:50px"><hr></div>

<div class="clear-fix"></div>

<div class="row" style="padding-bottom:50px;">

<div class="col-xs-12 col-md-7">
<div markdown="1">

<div class="section-title" markdown="1">
## Activities
</div>

The main activities of the Microservices Community currently include, but are not limited to, the following.

- Organise the International Conference on Microservices once a year ([http://conf-micro.services](http://conf-micro.services)), which acts also as a recurring opportunity for the physical gathering of the community.

- Support the organisation of focused events on microservices. Examples include: technical workshops on industrial technologies, national meetings (like the [Italian Meeting on Microservices](http://www.italianasoftware.com/mom2016_eng.html)), and academic forums.

- Provide funding opportunities for travelling and the organisation of events in general.

- Publish open access material on microservices, either through the website as informal publications (white papers), or through more formal channels (like edited books with chapters from multiple authors, or journals).

- Provide resources for the digital platform of the community, including this website.

<div id="badge" style="overflow: auto;padding: 15px;border: 1px solid lightgray;border-radius: 5px; margin-top: 50px;"><img style="float:left;width:130px; padding-right:10px;" src="/assets/images/Badge_MC_Supported_black.png" alt="">
<div class="pt-2">
<strong>Microservices Community Collaboration Badge</strong>
<p>
Since June 2018, the activities and events organised in collaboration with the Microservices Community are recognisable from the Microservices Community Collaboration Badge (shown on the left) present in their website.</p>
</div>
</div>
</div>
</div>

<div class="col-xs-12 col-md-offset-1 col-md-4" markdown="1">
### Social Media

<div>
<a class="twitter-timeline" data-tweet-limit="1" data-height="400" href="https://twitter.com/c_microservices">Last Tweet from the Microservices Community</a> <script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>
</div>
</div>

</div>
</div>
</div>
</div>
</div>
</div>
</section>