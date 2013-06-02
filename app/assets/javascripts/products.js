// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
function products_search(){
	var name = $('#product_name');

	$.ajax({url: "/product_search",
		  	data: { name: name.val() }})
	.done(function(data) {
		$('body').append(data);
		$('#new_product').modal('show');
	});
}

function add_product(selected){
	console.log(selected);

	$.ajax({url: "/add_product",
		  	data: { id: selected.text() }})
	.done(function(data) {
		$('#products_content').html('');
		$('#products_content').append(data);
	});

	close_products_search();
}

function close_products_search(){
	$('#new_product').modal('hide').remove();
}