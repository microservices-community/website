---
layout: page
title: Microservices Community
permalink: /
---

<style>
.carousel__holder {
  z-index: 1
}
#banner {
  margin-top: 1vw;
  border-top-left-radius: 1vw;
  border-bottom-right-radius: 1vw;
  background: #e37900c9;
  z-index: 2;
  border: 5px solid #ffffffbf;
  color: white;
  font-weight: 600;
}
#banner h1 { font-size: max(3em, 4vw) !important; }
#banner p { font-size: max(1.5em, 1.5vw) !important; font-weight: 900 !important; }
</style>
<script>
var adjustBannerPosition = () => {
  console.log( "Windows width:" + $( window ).width() );
if( $( window ).width() < 1500 ){
    $( ".carousel__holder" ).css("margin", ( $( "#banner" ).height()*1.5 ) + "px 0px 0px 0px");
  } else {
    $( ".carousel__holder" ).removeAttr( "style" );
  }
};
$( document ).ready( adjustBannerPosition );
$( window ).resize( adjustBannerPosition );
</script>
<div class="col-xs-12 col-sm-offset-2 col-sm-8  text-center" id="banner">
  <div style="margin-top:1vw;" class="large">
  <p>The Microservices Community</p>
  <h1>1<sup>st</sup> GENERAL ASSEMBLY</h1>
  <p>will take place on March 24th, 2021</p>
  <p style="margin-top:1vw;"><a href="/events/1st_general_assembly.html">Read more to know how to participate</a></p>
  </div>
</div>

{% include home_carousel.html height="20" unit="%" duration="7" %}

<section style="margin-bottom:50px;">
<div class="container">
<div class="section-title" markdown="1" style="margin-bottom:20px;">
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
