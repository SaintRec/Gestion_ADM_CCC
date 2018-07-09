// Google Maps
google.maps.event.addDomListener(window, 'load', init);

function init() {
    // Basic options for a simple Google Map
    // For more options see: https://developers.google.com/maps/documentation/javascript/reference#MapOptions
    var mapOptions = {
        // How zoomed in you want the map to start at (always required)
        zoom: 11,
        scrollwheel: false,

        // The latitude and longitude to center the map (always required)
        center: new google.maps.LatLng(40.6700, -73.9400), // New York

        // How you would like to style the map.
        // This is where you would paste any style found on Snazzy Maps.
        styles: [{"featureType":"water","elementType":"geometry.fill","stylers":[{"color":"#d3d3d3"}]},{"featureType":"transit","stylers":[{"color":"#808080"},{"visibility":"off"}]},{"featureType":"road.highway","elementType":"geometry.stroke","stylers":[{"visibility":"on"},{"color":"#b3b3b3"}]},{"featureType":"road.highway","elementType":"geometry.fill","stylers":[{"color":"#ffffff"}]},{"featureType":"road.local","elementType":"geometry.fill","stylers":[{"visibility":"on"},{"color":"#ffffff"},{"weight":1.8}]},{"featureType":"road.local","elementType":"geometry.stroke","stylers":[{"color":"#d7d7d7"}]},{"featureType":"poi","elementType":"geometry.fill","stylers":[{"visibility":"on"},{"color":"#ebebeb"}]},{"featureType":"administrative","elementType":"geometry","stylers":[{"color":"#a7a7a7"}]},{"featureType":"road.arterial","elementType":"geometry.fill","stylers":[{"color":"#ffffff"}]},{"featureType":"road.arterial","elementType":"geometry.fill","stylers":[{"color":"#ffffff"}]},{"featureType":"landscape","elementType":"geometry.fill","stylers":[{"visibility":"on"},{"color":"#efefef"}]},{"featureType":"road","elementType":"labels.text.fill","stylers":[{"color":"#696969"}]},{"featureType":"administrative","elementType":"labels.text.fill","stylers":[{"visibility":"on"},{"color":"#737373"}]},{"featureType":"poi","elementType":"labels.icon","stylers":[{"visibility":"off"}]},{"featureType":"poi","elementType":"labels","stylers":[{"visibility":"off"}]},{"featureType":"road.arterial","elementType":"geometry.stroke","stylers":[{"color":"#d6d6d6"}]},{"featureType":"road","elementType":"labels.icon","stylers":[{"visibility":"off"}]},{},{"featureType":"poi","elementType":"geometry.fill","stylers":[{"color":"#dadada"}]}
        ]} ;

    // Get the HTML DOM element that will contain your map
    // We are using a div with id="map" seen below in the <body>
    var mapElement = document.getElementById('map');

    // Create the Google Map using our element and options defined above
    var map = new google.maps.Map(mapElement, mapOptions);

    // Let's also add a marker while we're at it
    var image = 'images/flag.png';
    var myLatLng = new google.maps.LatLng(40.6700, -73.9400);
    var beachMarker = new google.maps.Marker({
        position: myLatLng,
        map: map,
        icon: image
    });
}
// Google Maps end

jQuery(document).ready(function( $ ) {
    // subscribe:
    $("#buttonSubscribe").click(function(){
        var vemail = $("#email").val();
        if(vemail=='')
        {
            alert("Please fill out the form");
        }
        else if(vemail==''){alert('Email field is required')}
        else{
            $.get("php/email.php", { email:vemail },
                function(response, status){
                    $("#email").val('');
                    alert(response+"\n\nStatus : " + status);
                });
        }
    });

    // contact
    $("#buttonContact").click(function(){
        var vname = $("#InputName").val();
        var vemail = $("#InputEmail").val();
        var vmessage = $("#InputMessage").val();
        if(vname=='' || vemail=='' || vmessage=='')
        {
            alert("Please fill out the form");
        }
        else{
            $.get("php/contact.php", { name:vname,email:vemail,message:vmessage },
                function(response, status){
                    $("#InputName").val('');
                    $("#InputEmail").val('');
                    $("#InputMessage").val('');
                    alert(response+"\n\nStatus : " + status);
                });
        }
    });


    // preloader
    $('#status').fadeOut(); // will first fade out the loading animation
    $('#preloader').delay(350).fadeOut('slow'); // will fade out the white DIV that covers the website.
    $('body').delay(350).css({'overflow':'visible'});

    // counterUp
    //$('span').counterUp({
    //    delay: 10, // the delay time in ms
    //    time: 1000 // the speed time in ms
    //});

    // animate text letters
    $('.tlt').textillate({
        // the default selector to use when detecting multiple texts to animate
        selector: '.texts',

        // enable looping
        loop: true,

        // sets the minimum display time for each text before it is replaced
        minDisplayTime: 2000,

        // sets the initial delay before starting the animation
        // (note that depending on the in effect you may need to manually apply
        // visibility: hidden to the element before running this plugin)
        initialDelay: 1,

        // set whether or not to automatically start animating
        autoStart: true,

        // custom set of 'in' effects. This effects whether or not the
        // character is shown/hidden before or after an animation
        inEffects: [],

        // custom set of 'out' effects
        outEffects: [ 'RotateOut' ],

        // in animation settings
        in: {
            // set the effect name
            effect: 'fadeIn',

            // set the delay factor applied to each consecutive character
            delayScale: 1.5,

            // set the delay between each character
            delay: 100,

            // set to true to animate all the characters at the same time
            sync: false,

            // randomize the character sequence
            // (note that shuffle doesn't make sense with sync = true)
            shuffle: true,

            // reverse the character sequence
            // (note that reverse doesn't make sense with sync = true)
            reverse: false,

            // callback that executes once the animation has finished
            callback: function () {}
        },

        // out animation settings.
        out: {
            effect: 'RotateOut',
            delayScale: 1.5,
            delay: 50,
            sync: false,
            shuffle: true,
            reverse: false,
            callback: function () {}
        },

        // callback that executes once textillate has finished
        callback: function () {},

        // set the type of token to animate (available types: 'char' and 'word')
        type: 'char'
    });

    //hamburger icon
    $(document).ready(function(){
        $('#nav-icon3').click(function(){
            $(this).toggleClass('open');
        });
    });

    // preloader

    var dropdownSelectors = $('.dropdown, .dropup');

    // Animated Dropdown Menu Hamburger
    // =========================
        function dropdownEffectData(target) {
            // @todo - page level global?
            var effectInDefault = null,
                effectOutDefault = null;
            var dropdown = $(target),
                dropdownMenu = $('.dropdown-menu', target);
            var parentUl = dropdown.parents('ul.nav');

            // If parent is ul.nav allow global effect settings
            if (parentUl.size() > 0) {
                effectInDefault = parentUl.data('dropdown-in') || null;
                effectOutDefault = parentUl.data('dropdown-out') || null;
            }

            return {
                target:       target,
                dropdown:     dropdown,
                dropdownMenu: dropdownMenu,
                effectIn:     dropdownMenu.data('dropdown-in') || effectInDefault,
                effectOut:    dropdownMenu.data('dropdown-out') || effectOutDefault
            };
        }

    // Custom function to start effect (in or out)
    // =========================
        function dropdownEffectStart(data, effectToStart) {
            if (effectToStart) {
                data.dropdown.addClass('dropdown-animating');
                data.dropdownMenu.addClass('animated');
                data.dropdownMenu.addClass(effectToStart);
            }
        }

    // Custom function to read when animation is over
    // =========================
        function dropdownEffectEnd(data, callbackFunc) {
            var animationEnd = 'webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend';
            data.dropdown.one(animationEnd, function() {
                data.dropdown.removeClass('dropdown-animating');
                data.dropdownMenu.removeClass('animated');
                data.dropdownMenu.removeClass(data.effectIn);
                data.dropdownMenu.removeClass(data.effectOut);

                // Custom callback option, used to remove open class in out effect
                if(typeof callbackFunc == 'function'){
                    callbackFunc();
                }
            });
        }

    // Bootstrap API hooks
    // =========================
        dropdownSelectors.on({
            "show.bs.dropdown": function () {
                // On show, start in effect
                var dropdown = dropdownEffectData(this);
                dropdownEffectStart(dropdown, dropdown.effectIn);
            },
            "shown.bs.dropdown": function () {
                // On shown, remove in effect once complete
                var dropdown = dropdownEffectData(this);
                if (dropdown.effectIn && dropdown.effectOut) {
                    dropdownEffectEnd(dropdown, function() {});
                }
            },
            "hide.bs.dropdown":  function(e) {
                // On hide, start out effect
                var dropdown = dropdownEffectData(this);
                if (dropdown.effectOut) {
                    e.preventDefault();
                    dropdownEffectStart(dropdown, dropdown.effectOut);
                    dropdownEffectEnd(dropdown, function() {
                        dropdown.dropdown.removeClass('open');
                    });
                }
            }
        });


    // ScrollReveal
    window.sr = new scrollReveal();

    // cache the window object
    $window = $(window);

    $('section[data-type="background"]').each(function(){
// declare the variable to affect the defined data-type
        var $scroll = $(this);

        $(window).scroll(function() {
// HTML5 proves useful for helping with creating JS functions!
// also, negative value because we're scrolling upwards
            var yPos = -($window.scrollTop() / $scroll.data('speed'));

// background position
            var coords = '50% '+ yPos + 'px';

// move the background
            $scroll.css({ backgroundPosition: coords });
        }); // end window scroll
    });  // end section function
});



