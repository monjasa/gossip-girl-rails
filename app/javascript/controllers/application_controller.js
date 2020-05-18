export function init() {
    $('.dropdown').click(function(event) {
        event.stopPropagation();
        $('.dropdown').toggleClass('is-active');
    });

    // Toggle the "is-active" class on both the "navbar-burger" and the "navbar-menu"
    $(".navbar-burger").click(function() {
        $(".navbar-burger").toggleClass("is-active");
        $(".navbar-menu").toggleClass("is-active");
    });

    $('#user_avatar').change(() => {
        $('#edit_account').click();
    });

    $('#avatar-upload-btn').click(function(event) {
        $('#user_avatar').click();
    });
}