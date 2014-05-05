$(document).ready(function(){
 
//RELEASE 0: 
  //Link this script and the jQuery library to the jquery_example.html file and analyze what this code does. 
 
$('body').css({'background-color': 'teal'})
 
//RELEASE 1:
  //Add code here to select elements of the DOM 
 var bodyElement = $('body')
 
//RELEASE 2: 
  // Add code here to modify the css and html of DOM elements
 $( "h1" ).html( "Do it." )
 
//RELEASE 3: Event Listener
  // Add the code for the event listener here 
  $('img').on('mouseover', function(e){
     e.preventDefault()
    $(this).attr('src', 'http://www.humboldtherps.com/images/HCHSimage-Northwestern_Fence_Lizard_male-A_west_of_Loleta_CA_04-22-2007.JPG')
  })

$('img').on('mouseleave', function(e){
     e.preventDefault()
    $(this).attr('src', 'http://m1.fluidreview.com/media/assets/reviewrooms/devbootcamp/dbc-logo_1.png')
  })
 
 
//RELEASE 4 : Experiment on your own
 
 
 
 
 
})  // end of the document.ready function: do not remove or write DOM manipulation below this.
