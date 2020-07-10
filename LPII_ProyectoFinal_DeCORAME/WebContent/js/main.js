
/*MODAL PARA TEST */
$('#myModal').modal({
  keyboard: false
})
// ocultar modal en click
$(function () {
    $(".cerrarModalReg").on('click', function() {
        $('#myModal').modal('hide');
    });
});


$(document).ready(function(){
	$('#sidebarCollapse').on('click',function(){
		$('#sidebar').toggleClass('active');
	});
});  


$(document).ready(function(){
	
	   $("#botonOcultaMuestra").click(function(){
	      $(".divOcultaMuestra").each(function() {
	    	  
	        displaying = $(this).css("display");
	        if(displaying == "block") {
	          $(this).fadeOut('slow',function() {
	           $(this).css("display","none");
	          });
	        } else {
	          $(this).fadeIn('slow',function() {
	            $(this).css("display","block");
	          });
	        }
	      });
	});
	   
	   
	   
});


function CambiarEstilo() {
    if ($('#flecha').hasClass('fas fa-angle-down')){
    	$('#flecha').removeClass('fas fa-angle-down');
    	$('#flecha').addClass('fas fa-angle-up');      
    }else {
    	$('#flecha').removeClass('fas fa-angle-up');
    	$('#flecha').addClass('fas fa-angle-down'); 
      
    }
}