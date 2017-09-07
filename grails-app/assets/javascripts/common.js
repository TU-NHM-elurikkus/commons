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
});
