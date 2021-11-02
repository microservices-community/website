---
layout: page
title: Microservices Community
permalink: /
---
<section class="jumbotron text-center">
  <div class="container">
    <p class="lead"><b>We are the Microservices Community</b> &ndash; a European-based international community interested in the software paradigm of <a herf="https://en.wikipedia.org/wiki/Microservices" target="_blank">Microservices</a>.</p>
  </div>
</section>

<style>
.badge-notify {
    background: green;
    position: absolute;
    top: 5px;
    right: 20px;
}
</style>

<section style="margin-bottom:15px;">
  <div class="container">
    <div style="margin-bottom: 2em;" class="section-title">
    <h2>COMMUNITY GROUPS</h2>
    </div>
  <div class="row align-center">
    {% assign groups = site.data.groups | sort %}
    {%- for group_hash in groups -%}
      {% assign group = group_hash[1] %}
      <a href="/community-groups/{{ group.name | slugify }}.html">
      <div class="col-xs-2" style="padding:1em;">
      <img class="img-responsive thumbnail" 
      alt="{{ group.short_name }}" 
      src="/assets/images/groups/{{group.logo}}">
      {% if group.badge %}
      <span class="badge badge-notify">{{ group.badge }}</span>
      {% endif %}
      </div>
      </a>
    {% endfor %}
  </div>
  </div>

</section>

<section style="margin-bottom:15px;">
  <div class="container">
    <div style="margin-bottom: 2em;" class="section-title">
    <h2>Featured Events</h2>
    </div>
    {% comment %}
    Please find below our featured events...
    {% endcomment %}
<style>
.equal, .equal > div[class*='col-'] {  
    display: -webkit-box;
    display: -moz-box;
    display: -ms-flexbox;
    display: -webkit-flex;
    display: flex;
    flex:1 1 auto;
}
</style>
<div class="row equal">
{% for event in site.data.events limit: 3 %}
<div class="col-xs-3">
<div class="thumbnail" style="margin-left: -10px; margin-right: -10px;">
      <a target="_blank" href="{{ event.link }}">
        {% if event.thumbnail %}
        <img src="/assets/images/events/{{ event.thumbnail }}">
        {% else %}
        <img src="/assets/images/events/placeholder.png">
        {% endif %}
      </a>
      <div class="caption">
        {% if event.status %}
          {% assign event_status = event.status | strip | downcase %}
        {% else %}
          {% assign event_status = "" %}
        {% endif %}
        {% capture event_title_prefix %}
          {% if event.status == "upcoming" %}Upcoming: {% else %}{% endif %}
        {% endcapture %}
        <a target="_blank" href="{{ event.link }}">
          {% capture text %}
          {{ event_title_prefix }}{{ event.title }}
          {% endcapture %}
          <h5>{{ text | truncate: 128 }}</h5>
        </a>
        <p><b>{{ event.date }}{% if event.timezone %}, {{ event.timezone }}{% endif %}</b>
        </p>
        <p>
          {% capture text %}
            {% if event.abstract %} event.abstact {% endif %}
          {% endcapture %}
          {{ text | truncate: 128 }}
          {% capture event_link %}
            {% if event.id %}events/#{{ event.id }}{% else %}{{ event.link }}{% endif %}
          {% endcapture %}
          <a target="_blank" href="{{ event_link }}"><button type="button" class="btn btn-primary" style="margin-top:6px; position: absolute;right:20px;bottom:34px;">Read more</button></a>
        </p>
      </div>
    </div>
    </div>
{% endfor %}
<div class="col-xs-3">
  <div class="thumbnail" style="margin-left: -10px; margin-right: -10px; text-align: center; padding-top:4.85em;padding-bottom: 4.85em; padding-left: .5em; padding-right: .5em;">
  <div class="row">
  <div class="col-xs-12">To know more about the events supported by the Microservices Community visit our</div>
  <div class="col-xs-12">
  <a target="_blank" href="/events/"><div class="btn btn-primary" style="text-align: center; padding: 1em;"><p style="font-size:large;">Events page</p></div></a>
  </div>
  </div>
  </div>
</div>
</div>
</div>
</section>

<section style="margin-bottom:25px;">
<div class="container">
<div class="row">
  <div class="col-xs-6" id="block_im">
    <h2>Instant Messaging</h2>
    <div class="col-xs-12"><h2><img style="margin-top:-.25em; width:250px;" src="assets/images/media/discord.png" alt=""> Channels</h2></div>
    <div class="clearfix"></div>
    <div style="background-color: #f2f3f5; font-weight: bold; font-size: x-large; border-radius: 6px; margin-left: 6px; padding: 10px;">
      <div>
        <ul style="list-style: none;">
        {% for channel in site.data.discord_channels %}
        <a style="color: #858e99 !important;" href="{% if channel.link %}{{ channel.link }}{% else %}https://discord.gg/BmsrHMC{% endif %}"><li style="margin-top: .7em; margin-bottom: .7em;"># {{ channel.name }}</li></a>
        {% endfor %}
        </ul>
      </div>
    </div>
  </div>
  <div class="col-xs-6" style="overflow: hidden;">
    <div id="block_sm_f" class="col-xs-12" style="text-align: center;">
    <h2>Social Media</h2>
    <h2>Follow the community on: &nbsp;<a href="https://twitter.com/c_microservices"><img src="assets/images/media/twitter.png" alt=""></a>
      <a target="_blank" href="https://www.facebook.com/MicroservicesCommunity/"><img src="assets/images/media/facebook.png" alt=""></a>
      <a target="_blank" href="https://www.linkedin.com/company/microservices-community"><img src="assets/images/media/linkedin.png" alt=""></a>
    </h2>
    </div>
    <div class="col-xs-12" id="block_sm_s" style="height: 596px; overflow:scroll;"><a class="twitter-timeline" data-tweet-limit="10" href="https://twitter.com/c_microservices">Latest Tweet from the Microservices Community</a> <script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script></div>
  </div>
</div>
</div>
</section>
<script>
  const resizeFn = ( event ) => {
    const h = document.querySelector( "#block_im" ).offsetHeight;
    const hoffset = document.querySelector( "#block_sm_f" ).clientHeight;
    document.querySelector( "#block_sm_s" ).parentNode.style.height = ( h ) + "px";
  };
  window.addEventListener( 'readystatechange', resizeFn, true );
  window.addEventListener( 'resize', resizeFn, true );
</script>

<section style="margin-bottom:50px;">
<div class="container">
<div id="about_us" class="section-title" markdown="1" style="margin-bottom:20px;">
## Who we are
</div>

<div class="row">
<div class="col-xs-12">
<div class="block">
<div markdown="1">
**We are the Microservices Community** --- a European-based international community interested in the software paradigm of [Microservices](https://en.wikipedia.org/wiki/Microservices).

**Our aims** are to share knowledge about Microservices and to promote their development, in particular by bridging research, teaching, and innovation at businesses, universities, and individuals.

**We have** a broad composition, including people from research institutions, private companies, universities, and public organisations (like municipalities).

**We strongly believe** in the importance of discussing open issues and solutions from different points of view, to create foundations for both innovation and basic research.

The Microservices Community was born during the first edition of the [International Conference on Microservices](http://conf-micro.services).
</div>
</div>
</div>
</div>

<div class="row">

<div class="col-xs-12" style="width:50%;">
<div markdown="1">
<div class="card-title" markdown="1">
## Why
</div>
</div>
<div markdown="1">
Digital transformations are taking place all over the world and are causing an **explosion in the number of connected IT systems** that businesses and society depend on.

This progression is taking the **complexity of IT systems to an unprecedented level**: Systems must be flexible, easily integrated and updated, but at the same time should be reliable and performant.

New systems will be implicitly distributed and they require to be easily composed and arranged depending on the context.

This poses a **big technical challenge** which needs to be solved in order to have IT support the technological and scientific development.
</div>
</div>

<div class="col-xs-12" style="width:50%; padding-left:20px; float:right;">
<div markdown="1">
<div class="card-title" markdown="1">
## Focus & Values
</div>
</div>
<div markdown="1">
We aim at coordinating initiatives in four main areas: Research, Education, Brokering, and Innovation. We believe in the value of:

**Breadth of areas**: understanding microservices touches on different topics of computing, including Software Engineering, Software and Enterprise Architecture, Business Process Management, and Programming Languages.

**Breadth of actors and activities**: interaction among the four areas and their actors is key to the success of microservices, and we need more actors to get a strong overview of how each area can benefit from each other.

**Depth of knowledge**: We believe we are only going to get breakthroughs with highly specialised actors with in depth knowledge.
</div>
</div>

</div>
</div>
</section>
