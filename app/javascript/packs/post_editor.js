import tinymce from 'tinymce/tinymce';

import 'tinymce/themes/silver';
import 'tinymce/themes/mobile';

import 'tinymce/plugins/image';
import 'tinymce/plugins/autolink';
import 'tinymce/plugins/autosave';
import 'tinymce/plugins/charmap';
import 'tinymce/plugins/code';
import 'tinymce/plugins/emoticons';
import 'tinymce/plugins/fullscreen';
import 'tinymce/plugins/help';
import 'tinymce/plugins/hr';
import 'tinymce/plugins/imagetools';
import 'tinymce/plugins/lists';
import 'tinymce/plugins/advlist';
import 'tinymce/plugins/nonbreaking';
import 'tinymce/plugins/preview';
import 'tinymce/plugins/searchreplace';
import 'tinymce/plugins/visualblocks';
import 'tinymce/plugins/wordcount';
import 'tinymce/plugins/table';
import 'tinymce/plugins/link';

import 'tinymce/plugins/emoticons/js/emojis';
import 'tinymce/icons/default/icons.min';

require.context(
    '!file-loader?name=js/[path][name].[ext]&context=node_modules/tinymce!tinymce/skins', true,
     /.*/
);



$(document).on('ready turbolinks:load', function(){
    tinymce.init({
        selector: 'textarea',
        theme: 'silver',
        plugins: ['image', 'autolink', 'autosave',
            'charmap', 'code', 'emoticons',
            'fullscreen', 'help', 'hr',
            'imagetools', 'link', 'lists',
            'advlist', 'nonbreaking',
            'preview', 'searchreplace',
            'table', 'visualblocks', 'wordcount'],
        imagetools_cors_hosts: ['localhost'],
        autosave_interval: '30s',
        autosave_restore_when_empty:true,
        autosave_retention: '1440m',
        image_caption: true,
        relative_urls: false,
        images_upload_url: '../image/upload',
        contextmenu: 'link image imagetools table spellchecker',
        toolbar_mode: 'sliding',
        toolbar: [
            {
                name: 'history', items: [ 'restoredraft', 'undo', 'redo']
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
                name: 'specials', items: ['charmap', 'emoticons', 'hr']
            },
            {
                name: 'images', items: ['image']
            },
            {
                name: 'extras', items: ['visualblocks', 'preview']
            }
        ],
        mobile: {
            theme: 'mobile',
            plugins: ''
        }
    });
});

