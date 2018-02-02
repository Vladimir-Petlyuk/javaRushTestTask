$(document).ready(function () {
        $("body").on("click", 'a', function () {
            var id = $(this).attr("id");
        $.ajax({
            type: "POST",
            url: 'openBook',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            cache: false,
            data: '{"id": "' + id + '"}',
            success: function () {
            }
        });
    });
});