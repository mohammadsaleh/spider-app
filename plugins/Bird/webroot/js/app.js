$(function() {

    // Disable CSS transitions on page load
    $('body').addClass('no-transitions');
	
	// Placeholder text toggle on focus
	$('input,textarea').focus(function(){
	   $(this).data('placeholder',$(this).attr('placeholder'))
			  .attr('placeholder','');
	}).blur(function(){
	   $(this).attr('placeholder',$(this).data('placeholder'));
	});
	
	 // Popover
    $('[data-popup="popover"]').popover();

    // Tooltip
    $('[data-popup="tooltip"]').tooltip();
	
	// Fancybox
	$('[data-popup="lightbox"]').fancybox();
	
	// Theme switcher
	// -------------------------
	$(".style").on("click", function(){
		var stylesheet = $(this).attr('theme').toLowerCase();
		$('#style').attr('href','bird/css'+'/styles/'+stylesheet+'.css');
	});
	$(".theme").on("click", function(){
		var theme = $(this).attr('theme').toLowerCase();
		$('#theme').attr('href','bird/css'+'/themes/'+theme+'.css');
	});
	
	// Sidebar
    // -------------------------
    // Toggle sidebar
    $('.sidebar-toggle').on('click', function (e) {
        e.preventDefault();
        // Toggle min sidebar class
        $('body').toggleClass('sidebar-xs');
    });

	// Adjust page height on sidebar control button click
    $(document).on('click', '.sidebar-control', function (e) {
        containerHeight();
    });

    // Adjust container height
    function containerHeight() {
        var availableHeight = $(window).height() - $('.page-container').offset().top - $('.navbar-fixed-bottom').outerHeight();
        $('.page-container').attr('style', 'min-height:' + availableHeight + 'px');
    }

    // Initialize
    containerHeight();
	
	// Toggle mobile sidebar
    $('.sidebar-mobile-toggle').on('click', function (e) {
        e.preventDefault();
        $('.sidebar-main').toggleClass('hidden-xs');
		$('.sidebar').attr('style', 'display:inherit');
    });
	
    // Add 'active' class to parent list item in all levels
    $('.navigation').find('li.active').parents('li').addClass('active');

    // Hide all nested lists
    $('.navigation').find('li').not('.active, .category-title').has('ul').children('ul').addClass('hidden-ul');

    // Highlight children links
    $('.navigation').find('li').has('ul').children('a').addClass('has-ul');

    // Add active state to all dropdown parent levels
    $('.dropdown-menu:not(.dropdown-content), .dropdown-menu:not(.dropdown-content) .dropdown-submenu').has('li.active').addClass('active').parents('.navbar-nav .dropdown:not(.language-switch), .navbar-nav .dropup:not(.language-switch)').addClass('active');

    // Main navigation
    $('.navigation-main').find('li').has('ul').children('a').on('click', function (e) {
        e.preventDefault();

        // Collapsible
        $(this).parent('li').not('.disabled').not($('.sidebar-xs').not('.sidebar-xs-indicator').find('.navigation-main').children('li')).toggleClass('active').children('ul').slideToggle(250);

        // Accordion
        if ($('.navigation-main').hasClass('navigation-accordion')) {
            $(this).parent('li').not('.disabled').not($('.sidebar-xs').not('.sidebar-xs-indicator').find('.navigation-main').children('li')).siblings(':has(.has-ul)').removeClass('active').children('ul').slideUp(250);
        }
    });
	
	// Left sidebar
    $('.navigation-main > .navigation-header > i').tooltip({
        placement: 'right',
        container: 'body'
    });

	// Disable click in disabled navigation items
    $(document).on('click', '.navigation .disabled a', function (e) {
        e.preventDefault();
    });
});