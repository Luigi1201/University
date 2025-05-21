/**
 * PASSAGGI "DI SET-UP" EFFETTUATI IN CONSOLE:
 * 1) npm init -y
 * 2) npm i nodemon --save-dev
 * 3) npm i express
 * 4) modifica scripts in package.json aggiungendo "start":"nodemon index.js"
 * 5) npm run start
 * 
 * ARGOMENTO: MIDDLEWARE 
 */

const express = require('express');
const app = express();

/*se non avessi reso middlewareProva un modulo avrei dovuto scriverlo così qui:
const middlewareProva = (req, res, next)=>{
    const {method, url} = req;
    const time = new Date().getMinutes();
    console.log(method, url, time);
    next(); //per passare da middleware a res ("per andare avanti"), altrimenti esecuzione rimane bloccata nel middleware
    //per mandare risposta da qui e non andare a res successiva faccio res.send("risposta dal middleware")
}
*/

const middlewareProva = require('./middlewareprova');
const auth = require('./authMiddleware');


//middleware che funziona per tutti gli app.get si fa cosi: app.use(middlewareProva); 
//middleware che funziona solo per path '/persone' si fa cosi: app.use('/persone',middlewareProva); 
app.use([middlewareProva,auth]); //due middleware in ogni app.get

app.get('/', (req, res) => {
    res.send("Homepage")
})

app.get('/about', (req, res) => {
    res.send("About")
})

app.get('/persone/', (req, res) => {
    res.send("Persone")
})

app.get('/persone/ciao', (req, res) => {
    res.send("Persone ciao")
})

/* specificando ogni volta l'utilizzo di middlewareProva per ogni app.get senza utilizzare app.use(middlewareProva):
app.get('/', middlewareProva, (req, res) => {
    res.send("Homepage")
})

app.get('/about', middlewareProva, (req, res) => {
    res.send("About")
})
*/

//BONUS: INVIO TRAMITE POSTMAN DI UN JSON E UTILIZZO MIDDLEWARE 'express.json' PER LEGGERE I JSON IN ENTRATA CHE ALTRIMENTI SAREBBERO UNDEFINED
app.use(express.json()); //(utilizzo middleware tramite metodo app.use visto prima)
app.post('/',(req,res)=>{
    console.log(req.body);  //in postman inserito body della richiesta tramite row ed espresso formato json
    res.send("ok richiesta post");
})

app.listen(3000);