---
layout: page
title: Events
permalink: /events/
redirect_from:
  - /e/discotec2020
  - /e/discotec2020/
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
{% capture email_body %}Dear Microservices Community Communication Group,

I am NAME SURNAME and [,together with NAMES SURNAMES,] I am organising the event EVENT_NAME.
Microservices are a central topic of the event because REASON_1[, REASON_2, ..., REASON_N].
Sending this inquiry, I confirm that I read and understood the Code of Conduct for event organisers of the Community and agree to follow its rules.
For the above reasons, I kindly ask the Microservices Community to consider the collaboration to organise EVENT_NAME.

Best Regards,
NAME SURNAME
{% endcapture %}

<div markdown="1">
## Obtaining the Support of the Microservices Community

The Microservices Community is actively involved in the organisation of events around (but not solely dedicated to) Microservices.

We welcome inquiries from the organisers of [activities compatible with the Community's goals](/activities) to get our support and collaborate in their organisation.
We invite prospecting organisers to contact the Microservices Community Communication Group at the address 
<a href="mailto:communication@microservices.community?subject={{ 'Inquiry for supporting EVENT_NAME' | url_encode }}&body={{ email_body | url_encode }}">communication@microservices.community</a>.


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
