<style type="text/css" media="screen">
img.thumbnail {
  height:115px;
}
</style>

<div class="container">
<div class="row text-center text-lg-left">
<div class="col-xs-8" id="logo_matrix">
</div>
<div class="col-xs-4" markdown="1">

__Key Facts__

---

10 Companies

---

4 Universities

---

4 Public organisations

</div>
</div>
</div>

<script>
$.get( "assets/images/logos/logos.json", function( data ) {
  itemList = "";
  $( data ).each( function( index, item ){
    itemList += "<div class=\"col-lg-3 col-md-4 col-xs-6\"><a href=\""
    + item.link
    + "\" class=\"d-block mb-4 h-100\"><img class=\"thumbnail \" src=\"assets/images/logos/"
    + item.logo + "\" alt=\"" + item.alt + "\"></a></div>";    
  });
  $( "#logo_matrix" ).append( itemList );
});
</script>
