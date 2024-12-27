const container = document.getElementById('container');
const overlayCon = document.getElementById('overlayCon');
const overlayBtn = document.getElementById('overlayBtn');

overlayBtn.addEventListener('click', () => {
    container.classList.toggle('right-panel-active');
    overlayBtn.classList.remove('btnScaled');
    window.requestAnimationFrame(() => {
        overlayBtn.classList.add('btnScaled');
    });
});

document.querySelector('.sign-in-container form').addEventListener('submit', async (event) => {
    event.preventDefault();
    const email = document.getElementById('signinEmail').value;
    const password = document.getElementById('signinPassword').value;

    const response = await fetch('/signin', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({ email, password })
    });

    const result = await response.json();
    if (result.success) {
        window.location.href = result.redirect;
    } else {
        alert(result.message);
    }
});

document.querySelector('.sign-up-container form').addEventListener('submit', async (event) => {
    event.preventDefault();
    const name = document.getElementById('signupName').value;
    const email = document.getElementById('signupEmail').value;
    const password = document.getElementById('signupPassword').value;

    const response = await fetch('/signup', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({ name, email, password })
    });

    const result = await response.json();
    if (result.success) {
        alert(result.message);
    } else {
        alert(result.message);
    }
});



