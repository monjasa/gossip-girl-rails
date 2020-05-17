export function init() {
    $('.dropdown').click(function(event) {
        event.stopPropagation();
        $('.dropdown').toggleClass('is-active');
    });
}