(function($) {

    $.qsParam = function(key) {
        function parseParams() {
            var params = {},
                e,
                a = /\+/g,  // Regex for replacing addition symbol with a space
                r = /([^&=]+)=?([^&]*)/g,
                d = function (s) { return decodeURIComponent(s.replace(a, " ")); },
                q = window.location.search.substring(1);

            while (e = r.exec(q))
                params[d(e[1])] = d(e[2]);

            return params;
        }

        if (!this.queryStringParams)
            this.queryStringParams = parseParams(); 

        return this.queryStringParams[key];
    };


	$(function() {

		var	$window = $(window),
			$body = $('body'),
			$sidebar = $('#sidebar'),
			$main = $('#main');

        // app full screen mode
        if ("standalone" in window.navigator && window.navigator.standalone) {
            $body.addClass('app-fullscreen'); 
        }

		// Disable animations/transitions until the page has loaded.
			$body.addClass('is-loading');

			$window.on('load', function() {
				window.setTimeout(function() {
					$body.removeClass('is-loading');
				}, 100);
			});

		// Fix: Placeholder polyfill.
			$('form').placeholder();

		// Search (header).
			var $search = $('#search'),
				$search_input = $search.find('input'),
                searchTimer;

			$body
				.on('click', '[href="#search"]', function(e) {

					e.preventDefault();

					// Not visible?
						if (!$search.hasClass('visible')) {

							// Reset form.
								$search[0].reset();

							// Show.
								$search.addClass('visible');

							// Focus input.
								$search_input.focus();

                            clearTimeout(searchTimer);
						}

				});

			$search_input
				.on('keydown', function(event) {

					if (event.keyCode == 27)
						$search_input.blur();

				})
				.on('blur', function() {
					searchTimer = window.setTimeout(function() {
						$search.removeClass('visible');
					}, 200);
				});

        // Back Top
        var $backTop = $('#backTop');
        $window.on('scroll.backtop', debounce(function () {
            if ($window.scrollTop() > 100) {
                $backTop.show();
            } else {
                $backTop.hide();
            }
        }));

        // scroll body to 0px on click
        $backTop.on('click',function () {
            $('body,html').animate({
                scrollTop: 0
            }, 800);
            return false;
        });

        // Theme switcher
        var ts = {
            ls: localStorage || {getItem:function(){}, setItem:function(){}},
            key: 'o2.theme',
            theme: 'light',
            init: function(){
                var theme = this.ls.getItem(this.key) || this.theme;
                this.$items = $('#theme-list li').on('click',function(e){
                    if(theme === 'dark'){
                        theme = 'light';
                    } else {
                        theme = 'dark';
                    }
                    ts.setTheme(theme);
                });
                this.setTheme(theme);
            },
            setTheme:function(theme){
                this.$items.removeClass('active');
                this.$items.filter('[data-v="' + theme +'"]').addClass('active');
                this.theme = theme;
                this.ls.setItem(this.key, theme);
                $body.removeClass('dark light').addClass(theme);
            }
        };
        ts.init();

        // query str
        var qs = {
            init: function(){
                var dis = $.qsParam('o2layout')||'';
                dis = dis.split('-');
                if(dis.length === 0){
                    return;
                }
                $body.addClass(dis.join(' '));
            }
        };
        qs.init();

	});

})(jQuery);
