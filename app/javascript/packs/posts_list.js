var jQueryBridget = require('jquery-bridget');
var Masonry = require('masonry-layout');
var imagesLoaded = require('imagesloaded');
jQueryBridget('masonry', Masonry, $);
imagesLoaded.makeJQueryPlugin( $ );

$(document).on('ready turbolinks:load', function () {
    var $grid = $('.masonry').masonry({
        itemSelector: '.masonry > *',
    });

    $grid.imagesLoaded().progress(function () {
        $grid.masonry('layout');
    });
});