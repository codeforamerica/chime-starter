$(document).ready(function() {
	// Header Search Button
	$('.js-search-button').click(function(e) {
		$('.global-header-search').toggle();
		if($('.global-header-search').is(':visible')) {
			$('.global-header-search .searchbar-input').focus();
		}
	})
})