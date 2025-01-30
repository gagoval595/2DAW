document.addEventListener('DOMContentLoaded', function() {
    var myModal = new bootstrap.Modal(document.getElementById('cookieModal'), {
        backdrop: 'static',
        keyboard: false
    });
    myModal.show();
});