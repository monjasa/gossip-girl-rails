export function init() {
    $("#user_username").keyup(allowAlphanumeric).change(allowAlphanumeric);
}

function allowAlphanumeric() {
    this.value = this.value.replace(/[^a-zA-Z0-9._]/g, '');
}