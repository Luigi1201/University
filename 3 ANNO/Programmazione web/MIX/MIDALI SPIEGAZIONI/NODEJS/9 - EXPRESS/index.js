/**
 * HTTP(propedeutico per express):
 * GET - LEGGERE DATI
 * POST - INVIARE DATI
 * PUT - MODIFICARE DATI
 * DELETE - ELIMINARE DATI
 * 
 * EXPRESS
 * - Passaggi per installare express da 0:
 *      1) npm init -y
 *      2) npm i express
 *      3) npm i nodemon --save-dev
 *      4)  modifica scripts in package.json aggiungendo "start":"nodemon index.js"
 *      5) npm run start
 */

const express = require('express');
const app = express(); //express() crea un'istanza di express()

app.use(express.static('public'))

//gestire pagina html '/' inviando homepage.html
app.get('/', (req, res) => {
    res.sendFile('homepage.html',{root:__dirname+"/public"})
})

app.get('/about', (req, res) => {
    res.sendFile('about.html',{root:__dirname+"/public"})
})

app.get('/contatti', (req, res) => {
    res.sendFile('contatti.html',{root:__dirname+"/public"})
})

//gestire ogni altra pagina non specificata prima
app.all('*',(req,res)=>{
    res.sendFile('404.html',{root:__dirname+"/public"})
})

app.listen(3000);