// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(function() {
	scaleYield();
	scaleAmounts();
});

function scaleYield(){
	var yield = $('div#yield p').html();
	$('select#scale').on('change', function(e){
		e.preventDefault();
		var data = {val: $('select#scale').val()};
		$.ajax({ data: data })
		.done(function(response){
			$('div#yield p').html(yield*response)
		})
	});
}

function scaleAmounts() {
	var storage = [];
	$('.amount').each(function(idx, domject) {
		var amount = $(this).text().trim()
		storage.push(amount);

		$('select#scale').on('change', function(e) {
			e.preventDefault();
			var multiplier = $('select#scale').val();
			$('.amount').each(function(idx, domject) {
				$(this).html(storage[idx]*multiplier)
			})
		});
	});
}