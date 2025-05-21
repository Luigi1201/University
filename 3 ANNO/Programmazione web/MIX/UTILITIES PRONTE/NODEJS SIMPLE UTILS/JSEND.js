// JSend - Formato standard per le risposte API in JSON

/*
Struttura generale di una risposta JSend:
- STATUS: Indica lo stato della risposta ("success", "fail", "error").
- DATA: Contiene i dati restituiti in caso di successo o informazioni su cosa è andato storto.
- MESSAGE (solo per "error"): Messaggio descrittivo dell'errore.
- CODE (opzionale per "error"): Codice di errore personalizzato.
*/

// 1. RISPOSTA DI SUCCESSO
/*
Questa risposta viene utilizzata quando una richiesta è stata completata con successo e i dati sono restituiti.
*/
const successResponse = {
    status: "success",
    data: {
        post: {
            id: 1,
            title: "How to use JSend",
            content: "JSend provides a standard structure for API responses."
        }
    }
};

/*
Struttura tipica di una risposta di successo:
{
    "status": "success",
    "data": { ... }  // Qui si trovano i dati richiesti
}
*/

// 2. RISPOSTA DI FALLIMENTO DEL CLIENT
/*
Questo tipo di risposta è usato quando la richiesta è stata ricevuta correttamente, 
ma non può essere elaborata a causa di un errore del client (es. dati mancanti).
*/
const failResponse = {
    status: "fail",
    data: {
        title: "Titolo mancante"  // Spiega cosa non va o cosa manca
    }
};

/*
Struttura tipica di una risposta di fallimento:
{
    "status": "fail",
    "data": { ... }  // I dettagli del fallimento (es. dati non validi o mancanti)
}
*/

// 3. RISPOSTA DI ERRORE DEL SERVER
/*
Usato quando c'è un problema interno sul server. Qui il campo "message" è obbligatorio per descrivere l'errore.
*/
const errorResponse = {
    status: "error",
    message: "Errore interno del server",  // Descrizione dell'errore
    code: 500  // Codice di errore (opzionale)
};

/*
Struttura tipica di una risposta di errore:
{
    "status": "error",
    "message": "Descrizione dell'errore",
    "code": 123,  // Opzionale, codice di errore personalizzato
    "data": { ... }  // Opzionale, per dettagli aggiuntivi sull'errore
}
*/

// Differenze tra `fail` ed `error`:
// - `fail`: Errore prevedibile, causato da dati errati o mancanti inviati dal client.
// - `error`: Errore interno imprevisto sul server.


// Esempio di implementazione JSend con Express.js
/*
Questo esempio mostra come restituire risposte JSend in un'applicazione Express.
*/

const express = require('express');
const app = express();

app.get('/posts/:id', (req, res) => {
    const postId = req.params.id;

    // Se l'id è valido, restituisci una risposta di successo
    if (postId == 1) {
        res.json({
            status: "success",
            data: {
                id: 1,
                title: "Post Example",
                content: "This is an example post."
            }
        });
    } else {
        // Se l'id non è valido, restituisci una risposta di fallimento
        res.status(404).json({
            status: "fail",
            data: {
                message: "Post not found"
            }
        });
    }
});

// Middleware per gestire errori interni al server
app.use((err, req, res, next) => {
    res.status(500).json({
        status: "error",
        message: "An internal server error occurred",
        code: 500
    });
});

app.listen(3000, () => console.log('Server running on port 3000'));

/*
Cosa imparare da questo esempio:
- Le risposte "success", "fail" ed "error" seguono una struttura chiara.
- Il middleware di Express può gestire errori imprevisti e restituire risposte in formato JSend.
*/

// Conclusione:
// JSend è utile per strutturare le risposte API in modo coerente.
// Si distingue tra successo, fallimento prevedibile (errore del client) ed errore interno (errore del server).
