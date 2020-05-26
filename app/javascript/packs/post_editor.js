import tinymce from 'tinymce/tinymce';

import 'tinymce/themes/silver';
import 'tinymce/themes/mobile';

import 'tinymce/plugins/image';

import 'tinymce/icons/default/icons.min';

require.context(
    '!file-loader?name=js/[path][name].[ext]&context=node_modules/tinymce!tinymce/skins', true,
     /.*/
);



$(document).on('ready turbolinks:load', function(){
    tinymce.init({
        selector: 'textarea',
        theme: 'silver',
        plugins: 'image',
        image_caption: true,
        relative_urls: false,
        images_upload_url: '../image/upload',
        mobile: {
            theme: 'mobile',
            plugins: ''
        }
    });
});