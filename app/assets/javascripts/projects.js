// var ColorScheme = require('color-scheme');

// var scheme = new ColorScheme;
// scheme.from_hue(21)         // Start the scheme
//       .scheme('triade')     // Use the 'triade' scheme, that is, colors
//                             // selected from 3 points equidistant around
//                             // the color wheel.
//       .variation('soft');   // Use the 'soft' color variation
//
// var colors = scheme.colors();

/*
  colors = [ "e69373", "805240", "e6d5cf", "bf5830" ,
             "77d36a", "488040", "d2e6cf", "43bf30" ,
             "557aaa", "405c80", "cfd9e6", "306ebf" ]
*/


function updateTextInput(val, id) {
	document.getElementById('textOutput'+id).value = parseInt(val).toString(16);
    var color = parseInt(val).toString(16);
	console.log(color);
	 var selector = document.getElementById('textOutput'+id)
	// console.log($('#textOutput'+id))//.css('color', color)
	selector.style.backgroundColor = '#'+color;
}
