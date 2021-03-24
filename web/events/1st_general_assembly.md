---
layout: page
title: Microservices Community 1st General Assembly
permalink: /events/1st_general_assembly
groups:
  - id: 1
    name: Security
    speaker: Saverio Giallorenzo
    abstract: This is a proposal for the constitution of a Security group interested in all aspects that link Microservices with Security. The goal of group is to stimulate discussion about current security trends in (Design, Development, Deployment, Runtime) and the human aspects of those traits.
  - id: 2
    name: Communication
    speaker: Marco Peressotti
    abstract: |
      The Communication group is responsible for the communication and branding aspects of the Microservices Community (MC). The tasks of the group involve (i) coordination of the presence of the MC in events organised or endorsed by the MC; (ii) curation of the social media and online presence of the MC; and (iii) maintenance of media assets of the MC.

      In their talk, the Communication group will present the various activities it conducted since the inception of the MC and also give a brief outlook on activities concerning the future outreach of the MC.
  - id: 3
    name: Education
    speaker: Tullio Vardanega
    abstract: |
      The term "microservices" refers to software architecture and the multiple consequent ramifications of it, including (development) process and (governing) technology concerns. Intellectual mastery of the triad "design-process-technology" is crucial to the software engineering profession. As such, it should rank high in the learning outcomes of higher education. The university instructors, however, know full well how difficult it is to devise and actuate instructional designs truly valid to that effect. Ingredients that help bridge the gap include (1) communitarian sharing of learning practices and the lessons learned with them, and (2) collaborative dialogue with industrial practitioners, best placed at measuring the distance between the level of triadic maturity achieved by undergrad and graduate students who enter the profession and what full proficiency in it would require, besides life experience.

      With that premise in mind, we are creating the Community Group "Education", with the initial goal to make progress toward ingredient (1), and the medium-term prospect of broadening action to ingredient (2). The zero-level concrete objective of such a Community Group would be the production of a living collection of learning practices that can be shared and trialled by institutions at large and can be improved by user feedback. A natural by-product of that effort would be the derivation of material worth publishing in reputable academic venues interested in Computer Science Education. The Community Group plans to begin work by June 2021, by regular (monthly to bi-monthly) meetings, initially virtual and then in presence, whether dedicated or opportunistically latched to other events.
  - id: 4
    name: Industrial Applications
    speaker: Claudio Guidi
    abstract: |
        The group aims at collecting the point of view of industries and final users, by identifying critical scenarios and new challenges where the communiy can help in understanding and finding solutions and strategies. Moreover, the group aims at creating a positive network where triggering valueable discussions about the future vision and evolution of microservices and distributed applications in the networked era.
  - id: 5
    name: Joint Research and Innovation Projects
    speaker: Christian Walther Bruun
    abstract: |
      Christian Walther Bruun (MC Board) will present the community group on R&I. The group will work together to identify opportunities to obtain funding aimed at developing joint projects. This will especially be focused on European funds such as Horizon Europe that supports research and innovation activities for companies, universities and organisations interested in developing joint European projects.
  - id: 6
    name: Ethics
    speaker: Larisa Safina
    abstract: The Microservices Community strives to maintain a positive environment, where each participant feels appreciated and respected. However, misunderstandings and disagreements could still happen and the [Ethics Group](https://www.microservices.community/boards-and-groups/#Ethics-Committee) is responsible for their mitigation. The accepted and acceptable behaviors, together with all relevant procedures are formalized in the [Code of Ethics and Conduct](https://www.microservices.community/coc/). Any member of the community, having an issue with someone’s behavior, can report it to the group. All complaints will be taken seriously, kept confidential, and will receive a response.
---

<div class="container">
<div class="row">
<div class="col-xs-12" markdown="1">

<div class="section-title" markdown="1">
## Microservices Community 1st General Assembly, Online Event
</div>
On Match 24<sup>th</sup>, 2021, from 14:00&ndash;16:00 the Microservices
Community will host its 1st General Assembly.

As per the [statutes](/statutes) of the Community:

<blockquote class="blockquote" markdown="1" style="margin-left:1em;">
  The General Assembly holds the highest authority.

  All members of the MC have the right to participate and vote in the General Assembly.

  The General Assembly takes place in person or happens electronically every year and the Board can at any time call for an extraordinary General Assembly and must do so on the request of more than 1/3 of the members. An extraordinary General Assembly must take place no later than 28 days after the request has been received by the President, and it must be announced to all members no later 14 days before it will take place.

  The Council decides on the agenda of the General Assembly and is responsible to inform the members of the outcome of the General Assembly. Proposals for the agenda may be made by any member of the MC and must be sent to the President at least 20 days before the General Assembly. Proposals supported by more than 10 members must be put on the agenda by the Council.

  Votes are carried by a simple majority of members and can happen in person and/or electronically.

  The General Assembly is chaired (prioritised) by the President, the Vice-President, a Council Member or a member elected by the Council.

  <small class="text-muted text-right" style="margin-top:2em;" >Excerpt from the <cite title="Source Title">Microservices Community Statutes</cite></small>
</blockquote>

<div class="section-title" markdown="1">
### Agenda
</div>

<ul>
  <li>Welcome by the President of the Community Council (Balint Maschio)</li>
  <li>Introduction to Community Group Structure (Balint Maschio)</li>
  <li>Reports from the Community Groups <small>(Click on the items below to show/hide the abstract of each group's presentation)</small></li>
  <ul>
  {% for group in page.groups %}
  <li>
    <a data-toggle="collapse" href="#abstract-{{ group.id }}" role="button" aria-expanded="false" aria-controls="abstract-{{ group.id }}">{{ group.name }}</a>
    ({{ group.speaker }})
    <div class="collapse" id="abstract-{{ group.id }}"><div class="card card-body"><small>{{ group.abstract | markdownify }}</small></div></div>
  </li>
  {% endfor %}
  </ul>
  <li>Round table with introductions and indications of interest</li>
</ul>

<div class="section-title" markdown="1">
### Participation and Registration
</div>
The event is freely accessible by all members of the Microservices Community.

To get the invitation, the members of the community can **sign up** by sending an e-mail to [Christian Walther Bruun](mailto:cwb@groenbruun.eu) no later than March 22<sup>nd</sup>, 2021, 12:00 CET.

</div>
</div>
</div>