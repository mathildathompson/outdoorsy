$(document).ready(function() {

  $('#areasearch').change(function() {
    $('#droparea h3').show();
    $('div#popup').hide("drop", { direction: "left" }, 500);
    var searchterm = $(this).val();
    console.log($(this).val());
    $.ajax({
      url: "/events",
      type: 'POST',
      data: {searchterm: searchterm},
      success: function(){
        stroll.bind( "#restaurantslist" );
        stroll.bind( "#parkappend" );
        stroll.bind( "#meetups" );

        var $gallery = $( "#restaurantslist" );
        var $parks = $( "#parkslist" );
        var $events = $( "#meetups" );
        $trash = $( "#droparea" );

    // let the gallery items be draggable
    $( "li", $gallery ).draggable({
      cancel: "a.ui-icon", // clicking an icon won't initiate dragging
      revert: "invalid", // when not dropped, the item will revert back to its initial position
      containment: "document",
      helper: "clone",
      cursor: "move",
      appendTo: $trash
    });

      $( "li", $parks ).draggable({
      cancel: "a.ui-icon", // clicking an icon won't initiate dragging
      revert: "invalid", // when not dropped, the item will revert back to its initial position
      containment: "document",
      helper: "clone",
      cursor: "move",
      appendTo: $trash
    });

    $( "li", $events ).draggable({
      cancel: "a.ui-icon", // clicking an icon won't initiate dragging
      revert: "invalid", // when not dropped, the item will revert back to its initial position
      containment: "document",
      helper: "clone",
      cursor: "move",
      appendTo: $trash
    });

    // let the trash be droppable, accepting the gallery items
    $trash.droppable({
      accept: "#mainpage li",
      activeClass: "ui-state-highlight",
      drop: function( event, ui ) {
        deleteImage( ui.draggable );
        stroll.bind( "#restaurantslist" );
        stroll.bind( "#parkappend" );
        stroll.bind( "#meetups" );
        $('#droparea h3').hide();
      }
    });

    //     $trash.droppable({
    //   accept: "#parkslist > li",
    //   activeClass: "ui-state-highlight",
    //   drop: function( event, ui ) {
    //     deleteImage( ui.draggable );
    //     stroll.bind( "#parkslist" );
    //   }
    // });
    // let the gallery be droppable as well, accepting items from the trash
    $gallery.droppable({
      accept: "#droparea li",
      activeClass: "custom-state-active",
      drop: function( event, ui ) {
        recycleImage( ui.draggable );
      }
    });

    // resolve the icons behavior with event delegation
    // $( "ul.gallery > li" ).click(function( event ) {
    //   var $item = $( this ),
    //   $target = $( event.target );

    //   if ( $target.is( "a.ui-icon-trash" ) ) {
    //     deleteImage( $item );
    //   } else if ( $target.is( "a.ui-icon-zoomin" ) ) {
    //     viewLargerImage( $target );
    //   } else if ( $target.is( "a.ui-icon-refresh" ) ) {
    //     recycleImage( $item );
    //   }

    //   return false;
    // });
      // image deletion function
      var recycle_icon = "<a href='link/to/recycle/script/when/we/have/js/off' title='Recycle this image' class='ui-icon ui-icon-refresh'>Recycle image</a>";
      function deleteImage( $item ) {
        
          var $list = $( "ul", $trash ).length ?
          $( "ul", $trash ) :
          $( "<ul class='gallery ui-helper-reset'/>" ).appendTo( $trash );    

          $item.appendTo( $list ).fadeIn(function() {
            $item
            .animate({ width: "400px", height: "60px" })
            .parent()
            .animate({ width: "750px" });
          });
       
      }

    // image recycle function
    var trash_icon = "<a href='link/to/trash/script/when/we/have/js/off' title='Delete this image' class='ui-icon ui-icon-trash'>Delete image</a>";
    function recycleImage( $item ) {
      $item.fadeOut(function() {
        $item
        .find( "a.ui-icon-refresh" )
        .remove()
        .end()
        .css( "width", "96px")
        .append( trash_icon )
        .find( "img" )
        .css( "height", "72px" )
        .end()
        .appendTo( $gallery )
        .fadeIn();
      });
    }
    
  }
});



});
});