document.addEventListener('DOMContentLoaded', function() {
    const readLink = document.getElementById('read-link');
    readLink.addEventListener('click', function(event) {
        event.preventDefault();
        window.open(readLink.href, '_blank');
    });
});

 