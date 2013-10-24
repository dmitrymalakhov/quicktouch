$(document).ready(function(){
    tinymce.init({
        selector: "textarea",
        plugins: [
            "advlist autolink lists link image charmap print preview anchor",
            "searchreplace visualblocks code fullscreen",
            "insertdatetime media table contextmenu paste"
        ],
        toolbar: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image",
        autosave_ask_before_unload: false,
        max_height: 200,
        min_height: 160,
        height : 180
    });

    $(".image_carousel a[rel^='prettyPhoto']").prettyPhoto({
        show_title: false
    });
});