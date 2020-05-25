import tinymce from 'tinymce/tinymce';

import 'tinymce/themes/silver'
import 'tinymce/themes/mobile'

$(document).on('ready turbolinks:load', function(){
    tinymce.init({
        selector: 'textarea',
        theme: 'silver',
        mobile: {
            theme: 'mobile',
            plugins: 'autosave lists autolink'
        }
    });
});