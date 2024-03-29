---
layout: page
title: Microservices Community
permalink: /
---
{% assign next_meet_greet = site.data.events | where: "status", "upcoming-meet-greet" %}
{% assign next_meet_greet = next_meet_greet | first %}
<section class="jumbotron text-center">
  <div class="container">
    <p class="lead"><b>We are the Microservices Community</b> &ndash; a European-based international community interested in the software paradigm of <a href="https://en.wikipedia.org/wiki/Microservices" target="_blank">Microservices</a>.</p>
    {% if next_meet_greet %}
        <p><a href="{{ next_meet_greet.link }}" target="_blank"><span class="fa fa-star" aria-hidden="true"></span> Get in touch at our next Virtual Meet & Greet on {{ next_meet_greet.date }}, {{ site.meet_greet.time }} via <strong>{{ site.meet_greet.venue }}</strong></a></p>
    {% endif %}
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
      <div class="col-md-2 col-xs-4 text-center" style="padding:1em;">
      <img class="img-responsive thumbnail"
      alt="{{ group.short_name }}"
      src="/assets/images/groups/{{group.logo}}">
      {% if group.badge %}
      <span class="badge badge-notify">{{ group.badge }}</span>
      {% endif %}
      <div style="margin: -1em;">{{ group.short_name }}</div>
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
<div class="row" id="events" >
{% for event in site.data.events limit: 3 %}
{% capture event_link %}
  {% if event.link %}{{ event.link }}
  {% elsif event.id %}events/#{{ event.id }}
  {% else %}events{% endif %}
{% endcapture %}
<div class="col-md-3 col-xs-6">
<div class="thumbnail" style="margin-left: -10px; margin-right: -10px;">
      <a target="_blank" href="{{ event_link }}">
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
          {% if event.status == "upcoming" %}<span class="badge alert-info"> Upcoming</span> {% else %}{% endif %}
        {% endcapture %}
        <a target="_blank" href="{{ event_link }}">
          {% capture text %}
          {{ event_title_prefix }}{{ event.title }}
          {% endcapture %}
          <h5>{{ text | truncate: 128 }}</h5>
        </a>
        <p><small><b>{{ event.date }}{% if event.timezone %}, {{ event.timezone }}{% endif %}</b></small>
        </p>
        <p>
          {% capture text %}
            {% if event.abstract %} {{ event.abstact }}
            {% elsif event.longtext %} {{ event.longtext }}
            {% endif %}
          {% endcapture %}
          {{ text | strip_html | truncate: 80 }}
          <a target="_blank" href="{{ event_link }}"><button type="button" class="btn btn-primary" style="margin-top:6px; position: absolute;right:20px;bottom:34px;">
          <svg xmlns="http://www.w3.org/2000/svg" width="16" height="20" fill="currentColor" class="bi bi-arrow-right-circle-fill" viewBox="0 -2 16 16">
          <path d="M8 0a8 8 0 1 1 0 16A8 8 0 0 1 8 0zM4.5 7.5a.5.5 0 0 0 0 1h5.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3a.5.5 0 0 0 0-.708l-3-3a.5.5 0 1 0-.708.708L10.293 7.5H4.5z"/>
          </svg></button></a>
        </p>
      </div>
    </div>
    </div>
{% endfor %}
<div class="col-md-3 col-xs-6">
  <div class="thumbnail" style="margin-left: -10px; margin-right: -10px; text-align: center; padding-top:4.85em;padding-bottom: 4.85em; padding-left: .5em; padding-right: .5em;">
  <div class="row">
  <div class="col-xs-12">To know more about the events supported by the Microservices Community visit our</div>
  <div class="col-xs-12">
  <a target="_blank" href="/events/"><div class="btn btn-primary" style="text-align: center; padding: 1em;"><p style="font-size:large;margin-top: 5px;">Events page</p></div></a>
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
  <div class="col-xs-12 col-md-4" id="block_im" style="text-align: center;">
    <h2>Instant Messaging</h2>
    <div class="col-xs-12"><h2><img style="margin-top:-.25em; width:180px;" src="assets/images/media/discord.png" alt=""> Channels</h2></div>
    <div class="clearfix"></div>
    <div style="background-color: #f2f3f5; font-weight: bold; font-size: x-large; border-radius: 6px; margin-left: 6px; padding: 10px; text-align: left;" >
      <div>
        <ul style="list-style: none;">
        {% for channel in site.data.discord_channels %}
        <a style="color: #858e99 !important;" href="{% if channel.link %}{{ channel.link }}{% else %}https://discord.gg/BmsrHMC{% endif %}"><li style="margin-top: .7em; margin-bottom: .7em;"># {{ channel.name }}</li></a>
        {% endfor %}
        </ul>
      </div>
    </div>
  </div>
  <div class="col-xs-12 col-md-4" style="overflow: hidden;">
    <div id="block_sm_f" class="col-xs-12" style="text-align: center;">
    <h2>Social Media</h2>
    <h2>Follow us on: &nbsp;<a href="https://x.com/c_microservices"><img src="assets/images/media/x.png" alt=""></a>
      <a target="_blank" href="https://www.facebook.com/MicroservicesCommunity/"><img src="assets/images/media/facebook.png" alt=""></a>
      <a target="_blank" href="https://www.linkedin.com/company/microservices-community"><img src="assets/images/media/linkedin.png" alt=""></a>
    </h2>
    </div>
    <div class="col-xs-12" id="block_sm_s" style="height: 596px; overflow:scroll;"><a class="twitter-timeline" data-tweet-limit="10" href="https://twitter.com/c_microservices">Latest Tweet from the Microservices Community</a> <script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script></div>
  </div>
  <div class="col-xs-12 col-md-4" style="overflow: hidden;">
    <div id="block_youtube" class="col-xs-12" style="text-align: center;">
    <h2>Video on Demand</h2>
    <h2>Watch us on: &nbsp;<a href="https://www.youtube.com/@microservicescommunity6130"><img src="assets/images/media/youtube.png" alt=""></a>   
    </h2>
    </div>
   <div class="video">
    <figure>
        <iframe width="360" height="202" src="https://www.youtube.com/embed/aQKDBfMccJA" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
    </figure>
    <figure>
        <iframe width="360" height="202" src="https://www.youtube.com/embed/PGTLwj62qCg" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
    </figure>
    <figure>
        <iframe width="360" height="202" src="https://www.youtube.com/embed/sBA4rYaEBf0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
    </figure>
</div>
  </div>
</div>
</div>
</section>
<script>
  const resizeFn = ( event ) => {
    const events = Array.from( document.querySelectorAll( "#events > div > div" ) );
    const h_events = events.reduce(
      ( result, item ) => {
        this_h = item.clientHeight;
        if( ! result ){
          return this_h;
        } else if( result < this_h ) {
          return this_h;
        } else {
          return result;
        }
    }, 0);
    events.forEach( e => e.style.height = h_events + "px" );
    const h = document.querySelector( "#block_im" ).offsetHeight;
    document.querySelector( "#block_sm_s" ).parentNode.style.height = h + "px";
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
