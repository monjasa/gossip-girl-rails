export function init() {
    $('.dropdown').click(function(event) {
        event.stopPropagation();
        $('.dropdown').toggleClass('is-active');
    });

    $('#user_avatar').change(() => {
        $('#edit_account').click();
    });

    $('#avatar-upload-btn').click(function(event) {
        $('#user_avatar').click();
    });

}