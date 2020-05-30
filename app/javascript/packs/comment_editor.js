import tinymce from 'tinymce/tinymce';

import 'tinymce/themes/silver';
import 'tinymce/themes/mobile';

import 'tinymce/plugins/autolink';
import 'tinymce/plugins/charmap';
import 'tinymce/plugins/emoticons';
import 'tinymce/plugins/lists';
import 'tinymce/plugins/advlist';
import 'tinymce/plugins/nonbreaking';
import 'tinymce/plugins/wordcount';
import 'tinymce/plugins/link';

import 'tinymce/icons/default/icons.min';
import 'tinymce/plugins/emoticons/js/emojis';

require.context(
    '!file-loader?name=js/[path][name].[ext]&context=node_modules/tinymce!tinymce/skins', true,
    /.*/
);

$(document).on('ready turbolinks:load', function(){
    tinymce.init({
        selector: 'textarea',
        theme: 'silver',
        plugins: [ 'autolink', 'charmap', 'emoticons', 'lists', 'advlist', 'nonbreaking', 'wordcount', 'link' ],
        menubar: false,
        elementpath: false,
        relative_urls: false,
        toolbar: [
            {
                name: 'history', items: [ 'undo', 'redo']
            },
            {
                name: 'styles', items: [ 'styleselect' ]
            },
            {
                name: 'formatting', items: [ 'bold', 'italic', 'forecolor', 'backcolor' ]
            },
            {
                name: 'alignment', items: [ 'alignleft', 'aligncenter', 'alignright', 'alignjustify', 'numlist', 'bullist' ]
            },
            {
                name: 'indentation', items: [ 'outdent', 'indent' ]
            },
            {
                name: 'specials', items: ['charmap', 'emoticons']
            }
        ]
    });
});