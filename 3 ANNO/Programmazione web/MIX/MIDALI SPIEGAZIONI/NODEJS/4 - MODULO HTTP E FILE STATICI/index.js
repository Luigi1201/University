/**
 * - serve per creare un web server
 * - importare http
 * - creare un server con risposta default
 * - mettere server in ascolto
 * - gestire richiesta con routing ed errore
 */

const http = require('http');

const server = http.createServer((request, response) => {
    //console.log(request);
    if (request.url=='/'){
        response.end("Benvenuto sul sito");
    }
    if(request.url=='/luigi'){
        response.end("il profilo di luigi");
    }
    response.end(`
        <h1>Errore</h1>
        <p>Torna alla <a href="/">home</a>, la pagina non esiste</p>
        `)
})

//server in ascolto in 127.0.0.1:3000 | localhost:3000
server.listen(3000);    //ctrl+c poi da terminale per chiuderlo


