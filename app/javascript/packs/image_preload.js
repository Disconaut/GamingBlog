$(document).on('ready turbolinks:load', function () {
    $("input[data-toggle='img-preview']").on('change', function () {
        if (this.files && this.files[0]) {
            var reader = new FileReader();
            var input = this;

            reader.onload = function (e) {
                $($(input).attr('data-target'))
                    .attr('src', e.target.result);
            };

            reader.readAsDataURL(input.files[0]);
        }
    });
});