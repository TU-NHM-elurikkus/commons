//= require tether.min
//= require popper.min
//= require bootstrap.min

$(document).ready(function() {
    var burgerPopup = document.getElementById('burger-popup');
    var burgerOpenBtn = document.getElementById('burger-open');

    document.getElementById('burger-open').addEventListener('click', function() {
        burgerPopup.className = 'burger__popup burger__popup--open';
    });

    document.getElementById('burger-close').addEventListener('click', function() {
        burgerPopup.className = 'burger__popup';
    });

    setLanguage();
});

/*
* Sets the session language based on the stored value. This is needed to share language settings
* when moving from one app to another
*/
function setLanguage() {
    var grailsLocale = GLOBAL_LOCALE;
    var language = localStorage.getItem('language');

    // In case this is the first time setting system wide lang
    if(!language) {
        language = grailsLocale;
    }

    // If language on url then we do nothing
    if(!window.location.search.includes('lang=')) {
        // If local storage lang is the same as session then all is well in the world
        if(language !== grailsLocale) {
            window.location.search += '&lang=' + language; // Reload the page
        }
    } else {
        localStorage.setItem('language', grailsLocale);
    }
}
