$(function() {

		$('.accContainer').hide(); // hide all contents
		//$('.accordion:first').next().slideDown(); //show first instance of contents

		
	  $('.accordion').click(function (){
			if( $(this).next().is(':hidden') ){
				//slides all accordion content up
				$('.accordion').next().slideUp();
				//slides specific accordion content down
				$(this).next().slideDown();
			}
			return false; //prevent browser default
		});

});