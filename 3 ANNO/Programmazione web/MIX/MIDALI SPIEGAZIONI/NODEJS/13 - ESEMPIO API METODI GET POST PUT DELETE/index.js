/**
 * come sempre passaggi di setup:
 * 1) npm init -y
 * 2) npm i nodemon --save-dev
 * 3) npm i express
 * 4) modifica scripts in package.json aggiungendo "start":"nodemon index.js"
 * 5) npm run start
 *  
 * GET /api/persone - tutte le persone
 * GET /api/persone/:id - una persone specifica
 * POST /api/persone - inserire una persona
 * PUT /api/persone/:id - modificare persone
 * DELETE /api/persone/:id - eliminare persone
 * 
 * + BONUS: UTILIZZO DI ROUTE express.Router()
 */

const express = require("express");
const app = express();
app.use(express.json()) //USATO PER POST (utilizzo middleware per raccogliere json)
//app.use(express.urlencoded({extended:false})) se prendiamo dati da form

const personeRouter = require('./routes/persone');

app.use('/api/persone', personeRouter);

app.listen(3000);