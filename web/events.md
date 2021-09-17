---
layout: page
title: Events
permalink: /events/
redirect_from:
  - /e/discotec2020
  - /e/discotec2020/
  - /e/discotec2021
  - /e/discotec2021/
  - /e/amp2020
  - /e/amp2020/
  - /e/amp2021
  - /e/amp2021/
  - /e/microservices2020
  - /e/microservices2020/
  - /e/microservices2019
  - /e/microservices2019/
  - /e/bigservices2021/
  - /e/bigservices2021
---

<section><div class="container"><div class="row"><div class="col-xs-12" markdown="1">

<!--BEGIN First Row -->
<div class="row">

    <!-- BEGIN Events Column -->
<div class="col-xs-12 col-md-7">
<div class="section-title" markdown="1">
## Events
</div>

<strong>Upcoming Events</strong>
<ul>
{% for event in site.data.events %}
{% if event.status == "upcoming" %}
<li id="{{ event.id }}">
  <a href="{{ event.link }}">
  {{ event.title }}
  </a>
  {% if event.comment %}
  <span class="small">{{ event.comment }}</span>
  {% endif %}
  - {{ event.date }}
  {% if event.longtext %}
  <br/>
  <div style="font-size: 1.4rem;">{{ event.longtext }}</div>
  {% endif %}
</li>
{% endif %}
{% endfor %}
</ul>


<strong>Past Events</strong>
<ul>
{% for event in site.data.events %}
{% if event.status == "past" %}
<li id="{{ event.id }}">
  <a href="{{ event.link }}">
  {{ event.title }}
  </a>
  {% if event.comment %}
  <span class="small">{{ event.comment }}</span>
  {% endif %}
  - {{ event.date }}
</li>
{% endif %}
{% endfor %}
</ul>
</div>
    <!-- END Events Column -->

    <!-- BEGIN Social Media Column -->
<div class="col-xs-12 col-md-offset-1 col-md-4" markdown="1">
### Social Media
<div><a class="twitter-timeline" data-tweet-limit="2" data-height="400" href="https://twitter.com/c_microservices">Latest Tweet from the Microservices Community</a> <script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script></div>
</div>
    <!-- END Social Media Column -->

</div>
<!--END First Row -->

<div style="margin:50px"><hr></div><div class="clear-fix"></div>

<!--BEGIN Second Row -->
<div class="row" style="padding-bottom:50px;">

    <!--BEGIN First Column -->
<div class="text-justify col-xs-12">
        <!--BEGIN E-Mail Text -->
{% capture email_body %}Dear Microservices Community Communication Group,

I am NAME SURNAME and [,together with NAMES SURNAMES,] I am organising the event EVENT_NAME.
Microservices are a central topic of the event because REASON_1[, REASON_2, ..., REASON_N].
Sending this inquiry, I confirm that I read and understood the Code of Conduct for event organisers of the Community and agree to follow its rules.
For the above reasons, I kindly ask the Microservices Community to consider the collaboration to organise EVENT_NAME.

Best Regards,
NAME SURNAME
{% endcapture %}
        <!--END E-Mail Text -->

        <!--BEGIN Badge Box -->
<div markdown="1">
## Obtaining the Support of the Microservices Community

The Microservices Community is actively involved in the organisation of events around (but not solely dedicated to) Microservices.

We welcome inquiries from the organisers of [activities compatible with the Community's goals](/activities/) and its [code of conduct](/events/coc/) to get our support and collaborate in their organisation.
We invite prospecting organisers to contact the Microservices Community Communication Group at the address
<a href="mailto:{{ site.emails.communication }}?subject={{ 'Inquiry for supporting EVENT_NAME' | url_encode }}&body={{ email_body | url_encode }}">{{ site.emails.communication }}</a>.

<div id="badge" style="overflow: auto;padding: 15px;border: 1px solid lightgray;border-radius: 5px; margin-top: 50px;"><img style="float:left;width:130px; padding-right:10px;" src="/assets/images/Badge_MC_Supported_black.png" alt="">
<div class="pt-2">
<strong>Microservices Community Collaboration Badge</strong>
<p>
Since June 2018, the activities and events organised in collaboration with the Microservices Community are recognisable from the Microservices Community Collaboration Badge (shown on the left) present in their website.</p>
</div>
</div>
</div>
        <!--END Badge Box -->

</div>
    <!--END First Column -->

</div>
<!--END Second Row -->

</div></div></div></section>