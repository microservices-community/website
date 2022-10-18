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

Join the innovators, professionals, and experts on Microservices in our monthly Meet&Greet session.

The next event is scheduled for {% assign next_meet_greet = site.data.events | where: "status", "upcoming-meet-greet" %} {% assign next_meet_greet = next_meet_greet | first %} <a href="{{ next_meet_greet.link }}" target="_blank"> {{ next_meet_greet.date }}, {{ site.meet_greet.time }} via <strong>Zoom</strong></a>.