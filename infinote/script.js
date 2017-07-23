
//on click (sign-up), login thing shows up.
function signUp() {
    $( '#loginPic' ).addClass( 'appears' );
    $( '.overlay' ).addClass( 'appears' );
}

function exitSignUp() {
  $( '#loginPic' ).removeClass( 'appears' );
  $( '.overlay' ).removeClass( 'appears' );
}

function makePicker() {
  $('.demo').each( function() {
    $(this).minicolors(); //show color picker (on clicking this element)
    var color_picked = $(this).minicolors('value');  //color_picked acquires color of this element. applies clr to elements below
    // var color_picked_rgba = $(this).minicolors('rgbaString');
    $('.sign-up').css('background-color', color_picked);
    $('.intro').css('background-color', color_picked);
    $('.feature-descrip').css('color', color_picked);
    $('.learn').css('border-color', color_picked);
    $('.login-swatch').css('background-color', color_picked);
    $('.loginFrame').css('border-color', color_picked);
    $('.login-button').css('background-color', color_picked);
    $('input').css('border-bottom-color', color_picked);
    $('input').css('color', color_picked);
    $('.learn:hover').css('background-color', color_picked);

    $('.login-button').css('border-color', color_picked);
    // $('.learn:hover').css('background-color', color_picked);
    $('.overlayBG').css('background-color', color_picked);
    $('.overlayBG').css('opacity', .2);
    $('.colophon').css('background-color', color_picked);

    $('.login-button:hover').css('background-color', translucent);
  });

      // if (color_picked == null) {
      //   var color_picked = $(this).minicolors('value');  //color_picked color is applied to elements below
      //   $(this).minicolors();
      // } else {
      //   // var color_picked = $(this).minicolors('value');  //color_picked color is applied to elements below
      //   $('.sign-up').css('border-color', color_picked);
      //   $('.intro').css('background-color', color_picked);
      //   $('.feature-descrip').css('color', color_picked);
      //   $('.learn').css('border-color', color_picked);
      // }
}

// function getColor() {
//     var color_picked = $(this).minicolors('value');
//     $('.sign-up').css('border-color', color_picked);
//     $('.intro').css('background-color', color_picked);
//     $('.feature-descrip').css('color', color_picked);
//     $('.learn').css('border-color', color_picked);
// }

// $(document).ready( function() {
//    $('.demo').each( function() {
//      $('.minicolors-swatch-color').minicolors();
//    });
// });
