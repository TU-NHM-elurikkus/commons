//= require polyfills
//= require rollbar-config
//= require rollbar-2.2.10
//= require jquery
//= require jquery-i18n-properties-1.2.7
//= require tether.min
//= require popper.min
//= require bootstrap.min

var GLOBAL_LOCALE_CONF; // Populated by menu.gsp

$(document).ready(function() {
    $.i18n.properties({
        name: 'messages',
        path: GLOBAL_LOCALE_CONF.contextPath + '/messages/i18n/',
        mode: 'map',
        language: GLOBAL_LOCALE_CONF.locale
    });

    var burgerPopup = document.getElementById('burger-popup');

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
    var grailsLocale = GLOBAL_LOCALE_CONF.locale;
    var language = localStorage.getItem('language');

    // In case this is the first time setting system wide lang
    if(!language) {
        language = grailsLocale;
    }

    // If language on url then we do nothing
    // Using .indexOf() instead of .includes() because we need to support IE11
    if(window.location.search.indexOf('lang=') === -1) {
        // If local storage lang is the same as session then all is well in the world
        if(language !== grailsLocale) {
            window.location.search += '&lang=' + language; // Reload the page
        }
    } else {
        try {
            localStorage.setItem('language', grailsLocale);
        } catch (e) {
            // localStorage not available
        }
    }
}
