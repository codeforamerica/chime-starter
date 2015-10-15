$(document).ready(function() {
	// Header Search Button
	$('.js-search-button').click(function(e) {
		$(this).find('.fa').toggleClass('fa-search').toggleClass('fa-close');
		$('.header-search').toggle();
		if($('.header-search').is(':visible')) {
			$('.header-search .site-search-input').focus();
		}
	})
})