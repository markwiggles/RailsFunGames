// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .




$('#play-button')
    .hover(function () {
        $(this).stop().animate({ width: 105, height: 105, opacity: 1.0 }, 'fast');
    }, function () {
        $(this).stop().animate({ width: 100, height: 100, opacity: 0.7 }, 'fast');
    });


$('#play-button')
    .click(function () {
        $('.video-container').fadeIn('slow');
        $('#play-button').hide();
        $('#page-content').css({opacity: 0.25})
    });
$('#intro-close')
    .click(function () {
        $('.video-container').hide();
        $('#play-button').show();
        $('#page-content').css({opacity: 1.0})

    })



// Load the IFrame Player API code asynchronously.
var tag = document.createElement('script');
tag.src = "https://www.youtube.com/player_api";
var firstScriptTag = document.getElementsByTagName('script')[0];
firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

// Replace the 'ytplayer' element with an <iframe> and
// YouTube player after the API code downloads.
var player;
function onYouTubePlayerAPIReady() {
    player = new YT.Player('ytplayer', {
        height: '390',
        width: '640',
        videoId: 'r0LnnSU68Cs'
    });

}