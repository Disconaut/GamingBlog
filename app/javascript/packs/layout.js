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