<style type="text/css" media="screen">
img.thumbnail {
  height:115px;
}
</style>

<div class="container">
<div class="row text-center">
<!-- <div class="col-xs-8" id="logo_matrix"> -->
  {% assign sorted_logos = site.data.logos | sort: "alt" %}
  {% for item in sorted_logos %}
    <div class="logo_thumbnail col-sm-3 col-6"><a href="{{item.link}}"><img class="img-thumbnail " src="/assets/images/logos/{{item.logo}}" alt="{{item.alt}}"></a></div>
  {% endfor %}
<!-- <div class="col-xs-4" markdown="1">

__Key facts__

---

Z companies

---

X Universities

---

Y Public organisations

</div> -->
</div>
</div>
