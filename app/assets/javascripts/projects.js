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

// function updateTextInput(val, id) {
// 	document.getElementById('textOutput'+id).value = parseInt(val).toString(16);
// 	var color = parseInt(val).toString(16);
// 	console.log(color);
// 	 var selector = document.getElementById('textOutput'+id)
// 	// console.log($('#textOutput'+id))//.css('color', color)
// 	selector.style.backgroundColor = '#'+color;
//
// }

function updateTextInput(val, event) {
	// console.log(event.currentTarget);
	selector = event.currentTarget;
	// console.log(val);
	// var color = parseInt(val).toString(16);
	// this.style.backgroundColor = '#' + color


	// var selector = document.getElementById('Light2'+id)
	// selector.value = parseInt(val).toString(16);
	// var color = parseInt(val).toString(16);
	// console.log(color);
	// // console.log($('#textOutput'+id))//.css('color', color)
	// selector.style.backgroundColor = '#'+color;

}


function colorPalettes(id){
	var myElement = document.getElementById('colorBackgroundDark'+id);
	myElement.style.backgroundColor = "#002F3D";


	var myElement3 = document.getElementById('Dark1'+id);
	myElement3.style.backgroundColor = "#00898E";


	var myElement4 = document.getElementById('Dark2'+id);
	myElement4.style.backgroundColor = "#1A7B7F";


	var myElement2 = document.getElementById('colorBackgroundLight'+id);
	myElement2.style.backgroundColor = "#ffffff";


	var myElement5 = document.getElementById('Light1'+id);
	myElement5.style.backgroundColor = "#00474E";



	var myElement6 = document.getElementById('Light2'+id);
	myElement6.style.backgroundColor = "#6CEEFC";

}


// $(document).ready(function() {
//    $('.mediumSquare > div').click(function(e) {
//      alert(1);
//    });
// });
// content {
//    padding: 20px;
//    background: blue;
// }



$(document).ready(function() {
	var currentDivId;
	$('[type="range"]').each(function(){
		colorPalettes(this.id);
	})
	$('.mediumSquare > div').on('click', function(event){
		currentDiv = event.currentTarget
		console.log(currentDiv);
		$('.slider').on('input', function(){
			 var color = parseInt($(this).val()).toString(16);
			console.log($(this).val());
			 var selectedBar = '#'+ currentDiv;
			 currentDiv.style.backgroundColor = '#' + color
		});
	})
});

//
//
// var currentDiv = event.currentTarget;
// // var color = parseInt(val).toString(16);
// var value = $('.slider').val();
// console.log(value);
