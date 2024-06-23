document.addEventListener('DOMContentLoaded', function() {
    document.getElementById('loginForm').addEventListener('submit', function(event) {
        event.preventDefault();

        var username = document.getElementById('userName').value;
        var password = document.getElementById('pass').value;
        var message = document.getElementById('message');

        if (username === 'Eliandy' && password === '0202') {
            window.location.href = 'Empleado1.html';
        } else if (username === 'Badelyn' && password === '0202') {
            window.location.href = 'home.html';
        } else {
            message.textContent = 'Nombre o contraseña incorrectos';
        }
    });
});
