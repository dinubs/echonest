$('iframe').each(function(){
        function injectCSS(){
            $iframe.contents().find('head').append(
                $('<link/>', { rel: 'stylesheet', href: 'iframe.css', type: 'text/css' })
            );
        }
        console.log("YES");
        var $iframe = $(this);
        $iframe.on('load',function(){
            injectCSS();
        });
        injectCSS();
    });