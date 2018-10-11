 {extends file="master.tpl"}

 {block name=title}Welcome to the Home Controller{/block}
 {block name=body}
     <h1>Search Pokemon!</h1>
    <form>
        <div class="form-group">
            <label for="exampleFormControlInput1">Go ahead:</label>
            <input name="search" type="text" class="form-control" id="search_box" placeholder="example: Snorlax">
        </div>
    </form>

     <div id="search_results" class="container">
         <div id="result-id-1">
             <div id="pokemon_name">

             </div>
             <div id="pokemon_types">
                 <div id="pokemon_type">

                 </div>
             </div>

         </div>
     </div>

     <!-- Call before any Jquery usage -->
     {include file="footer_dependencies.tpl"}

     <script type="text/javascript">
         //Contrived Code, it works

         var globalTimeout = null;
         var timeout = 300;

         $(document).ready(function(){
             $('#search_box').keyup(function() {
                 var search = $('#search_box').val();

                 if(search != '' ){
                     if (globalTimeout != null) {
                         clearTimeout(globalTimeout);
                     }
                     globalTimeout = setTimeout(function() {
                         globalTimeout = null;

                         var form_values = $( "form" ).serialize();

                         // Send the data using post
                         var posting = $.post( '?controller=home&action=search', form_values );
                         $( "#search_results" ).empty();
                         // Put the results in a div
                         posting.done(function( data ) {
                             console.log(data);
                             console.time('for each');
                             $('#search_results').css("display","inline");
                             data['results'].forEach(element => {
                                // console.log(element.poke_id);

                             $('#search_results').append(div_id);
                             var pokeid = 'result-id-'+ element.poke_id;
                             var div_id = '<div id="' + pokeid + '" class="row justify-content-center" style="padding:1em;"> </div>';
                             if($('#' + pokeid).length === 0) $(div_id).appendTo('#search_results');

                             var poke_name = '<div id="pokemon_name" class="col-6"><h4>' + element.pokemon_name + '</h4></div>';

                             var poke_types = '<div id="pokemon_types" class="col-6"><h5>Types:</h5></div>';

                             var poke_type_name = '<div id="pokemon_type">' + element.pokemon_type_name + '</div>';
                             if ( $( '#'+ pokeid + ' #pokemon_type').length ) {
                                 $( "#"+pokeid+' #pokemon_types').append( poke_type_name );
                             }else{
                                 $( "#"+pokeid).append( poke_name );
                                 $( "#"+pokeid).append(poke_types);
                                 $( "#"+pokeid+' #pokemon_types').append( poke_type_name );
                             }
                            });
                             console.timeEnd('for each');
                         });

                     }, timeout);
                 }
             });
         });
     </script>
 {/block}


