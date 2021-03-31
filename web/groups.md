---
layout: page
title: Community Groups
permalink: /community-groups/
---
<section style="margin-bottom:25px;">
  <div class="container" >
    <div class="section-title">
      <h2>{{page.title}}</h2>
    </div>
    <p>Community Groups are established by the Council to tend to specific aspects and functions of the community. Members of a committee are appointed by the Council.</p>
    {%- for group_hash in site.data.groups -%}
      {% assign group = group_hash[1] %}
      <h3>{{ group.name }} Group</h3>
      <ul class="fa-ul">
        <li><span class="fa-li"><i class="fa fa-bullseye"></i></span>{{ group.mission.short | liquify }}</li>
        <li><span class="fa-li"><i class="fa fa-users"></i></span>
          <a href="{{ group.name | slugify }}.html">Group page</a></li>
        <li><span class="fa-li"><i class="fa fa-envelope"></i></span>
          <a href="mailto:{{ group.contact_email }}?subject=Inquiry to the {{ group.name }} Group of the Microservices Community">{{ group.contact_email }}</a></li>
      </ul>
    {%- endfor -%}
  </div>
</section>