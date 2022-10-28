---
layout: page
title: Microservice Community Registration Form
permalink: /registration-form/
---
<section style="margin-bottom:25px;">
  <div class="container" >
    <div class="section-title">
      <h2>{{page.title}}</h2>
    </div>
    <div class="container">
    <form method="POST" action="/resources/v1/contact/">
        <h3>Personal information:</h3>
        <label>Name: </label><br />
        <input type="text" name="name" placeholder="Your name" required="required"><br />
        <label>Job Title: </label><br />
        <input type="text" name="title" placeholder="Your job title" required="required"><br />
        <label>Affiliation: </label><br />
        <input type="text" name="affiliation" placeholder="Your affiliation" required="required"><br />
        <label>E-mail: </label><br />
        <input type="text" name="email" placeholder="Your E-mail" required="required"><br />
        <h3>Microservices Community group interest:</h3>
        <input type="checkbox" id="communication-group" name="communication-group" value="communication-group" checked /> Communication Group <br />
        <input type="checkbox" id="education-group" name="education-group" value="education-group" /> Education Group <br />
        <input type="checkbox" id="ethics-group" name="ethics-group" value="ethics-group" /> Ethics Group <br />
        <input type="checkbox" id="research-group" name="research-group" value="research-group" /> Research Group <br />
        <input type="checkbox" id="funding-group" name="funding-group" value="funding-group" /> R&I Funding Group <br />
        <input type="checkbox" id="security-group" name="security-group" value="security-group" /> Security for Microservices Group <br />
        <h3>Terms & Privacy:</h3>
        <label for="confirmation"><input type="checkbox" id="confirmation" name="confirmation" value="confirmation" required="required" />
        Consent in terms of data-protection law: I hereby consent that my data may be collected, stored and used as described in the procedure <a href="https://www.sdu.dk/en/om_sdu/om_dette_websted/databeskyttelse" target="_blank">"Microservices Community"</a>. I can revoke this consent at any given time without giving any reason. Moreover, I can claim information as to the stored data and require correction, deletion and inhibition of my personal data.
        </label>
        <br>
        <button class="btn btn-success" type="submit">Submit message</button>
    </form>
  </div>
  </div>
</section>