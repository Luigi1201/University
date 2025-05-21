document.getElementById('registrationForm').addEventListener('submit', function(event) {
    event.preventDefault(); // Impedisce l'invio predefinito del form

    // Recupera i valori dai campi del form
    const username = document.getElementById('username').value;
    const email = document.getElementById('email').value;
    const password = document.getElementById('password').value;
    const gender = document.getElementById('gender').value;
    const message = document.getElementById('message').value;

    // Simula un invio del form
    if (username && email && password && gender && message) {
        document.getElementById('responseMessage').textContent = 'Registrazione completata con successo!';
        document.getElementById('responseMessage').classList.remove('hidden');
        document.getElementById('registrationForm').reset(); // Resetta il form
    }
});


