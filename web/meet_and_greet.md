---
layout: page
title: Meet and Greet
permalink: /meet_and_greet/
---

<div class="container">
<div class="row">
<div class="col-xs-12" markdown="1">

<div class="section-title" markdown="1">
## Meet and Greet
</div>

Join innovators, professionals, and experts on Microservices in our monthly Virtual Meet & Greet.

<img class="col-xs-2 float-left" src="/assets/images/groups/meet_and_greet.jpg" alt="">

The next Meet & Greet is scheduled for {% assign next_meet_greet = site.data.events | where: "status", "upcoming-meet-greet" %} {% assign next_meet_greet = next_meet_greet | first %} <a href="{{ next_meet_greet.link }}" target="_blank"> {{ next_meet_greet.date }}, {{ site.meet_greet.time }} at <strong>Zoom</strong></a>.

<div class="clearfix" style="margin-bottom:50px"></div>