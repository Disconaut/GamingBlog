// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start();
require("turbolinks").start();
require("@rails/activestorage").start();
require("channels");

import('../src/plugins');
import '../packs/posts_list';
import "@fortawesome/fontawesome-free/js/all"

$(document).on('ready turbolinks:load', function(){
    $(".custom-file-input").on("change", function() {
        console.log("hello");
        let fileName = $(this).val().split("\\").pop();
        $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
    });

    $(".navbar-collapse").on("show.bs.collapse", function(){
        $(document.body).addClass("collapse-show");
    });

    $(".navbar-collapse").on("hide.bs.collapse", function(){
        $(document.body).removeClass("collapse-show");
    });
});


FontAwesome.config.mutateApproach = 'sync';
import "stylesheets/application.scss";
// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
