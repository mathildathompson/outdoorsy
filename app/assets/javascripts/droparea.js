// $(document).ready(function() {
  
//     var $gallery = $( "#restaurantslist" ),
//       $trash = $( "#droparea" );
 
//     // let the gallery items be draggable
//     $( "li", $gallery ).draggable({
//       cancel: "a.ui-icon", // clicking an icon won't initiate dragging
//       revert: "invalid", // when not dropped, the item will revert back to its initial position
//       containment: "document",
//       helper: "clone",
//       cursor: "move"
//     });
 
//     // let the trash be droppable, accepting the gallery items
//     $trash.droppable({
//       accept: "#restaurantslist > li",
//       activeClass: "ui-state-highlight",
//       drop: function( event, ui ) {
//         deleteImage( ui.draggable );
//       }
//     });
 
//     // let the gallery be droppable as well, accepting items from the trash
//     $gallery.droppable({
//       accept: "#droparea li",
//       activeClass: "custom-state-active",
//       drop: function( event, ui ) {
//         recycleImage( ui.draggable );
//       }
//     });
 
//     image deletion function
//     var recycle_icon = "<a href='link/to/recycle/script/when/we/have/js/off' title='Recycle this image' class='ui-icon ui-icon-refresh'>Recycle image</a>";
//     function deleteImage( $item ) {
//       $item.fadeOut(function() {
//         var $list = $( "ul", $trash ).length ?
//           $( "ul", $trash ) :
//           $( "<ul class='gallery ui-helper-reset'/>" ).appendTo( $trash );
 
//         $item.find( "a.ui-icon-trash" ).remove();
//         $item.append( recycle_icon ).appendTo( $list ).fadeIn(function() {
//           $item
//             .animate({ width: "48px" })
//             .find( "img" )
//               .animate({ height: "36px" });
//         });
//       });
//     }