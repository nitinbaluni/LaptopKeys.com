jQuery(document).ready(function($){
	$("a.delete-product").on( "click", function(){
		var id 		= $(this).data('id');
		var token 	= $(this).data('token');
        $.ajax({
            url: "/laravel/laptopkeys.com/dashboard/product/delete/"+id,
            method: 'POST',
            dataType: "JSON",
            data: { id: id, _method:'DELETE', _token: token},
            success: function(response){
                if( response.success === true  ){
                    location.reload();
                }else{
                    alert( response.message );
                }
            }
        });
	});
});