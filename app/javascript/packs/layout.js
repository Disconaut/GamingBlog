import Headroom from 'headroom.js';

const header = document.querySelector("header");

const headroom = new Headroom(header, {
    tolerance: 10,
    classes: {
        initial: "header",
        pinned: "header-show",
        unpinned: "header-hide",
        top: "header-top",
    }
});

headroom.init();

$(".navbar-collapse").on("show.bs.collapse", function(){
    $(document.body).addClass("collapse-show");
});

$(".navbar-collapse").on("hide.bs.collapse", function(){
    $(document.body).removeClass("collapse-show");
});
