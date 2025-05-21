/**
 * PASSAGGI "DI SET-UP" EFFETTUATI IN CONSOLE:
 * 1) npm init -y
 * 2) npm i nodemon --save-dev
 * 3) npm i express
 * 4) modifica scripts in package.json aggiungendo "start":"nodemon index.js"
 * 5) npm run start
 * 
 * API JSON NEL CODICE SEGUENTE IN CUI PASSO JSON DA FILE A CLIENT CHE LO RICHIEDE
 * - esempio: per restituire json di persone si utilizza res.json(persone);
 * 
 * ROUTE PARAM: in url quando abbiamo :nomeParametro  , si raccoglie con req.params.nomeParametro
 * - esempio: path/persone/param si raccoglie con req.params , esempio numerico: 'path/persone/4' si raccoglie con const {id} = req.params
 * 
 * QUERY STRING PARAM: quando utilizziamo in richiesta http il simbolo '?nomeParametro' , si raccoglie con req.nomeParametro
 * - esempio1: path?query=L si raccoglie con req.query 
 * - esempio2: path?query=L&lilmit=1 si raccoglie con const {query,limit} = req.query
 */


//UTILIZZO DI API JSON NEL CODICE SEGUENTE(tramite res.json):
const express = require('express');
const app = express();
const {persone} = require('./persone');

app.get('/', (req, res) => {
    res.send("<h1>Homepage</h1><br><a href='/persone'>Vai a persone (dati completi)</a><br><a href='/personeRestrict'>Vai a persone (dati parziali)</a>");
})
 
app.get('/persone', (req,res)=>{
    res.json(persone);
})

app.get('/personeRestrict', (req,res)=>{
    const nuovaPersona = persone.map((persona)=>{
        const {nome,cognome,eta} = persona;
        return {nome,cognome,eta};
    });
    res.json(nuovaPersona);
})


////UTILIZZO DI ROUTE PARAM NEL CODICE SEGUENTE (tramite simbolo ':nomeParametro', spacchettandolo poi con req.params.nomeParametro):
app.get('/persone/:id',(req,res)=>{
    const {id} = req.params; //stessa cosa di const id = req.params.id
    const persona = persone.find((persona)=> persona.id===id); //restituisce automaticamente valore essendo una sola riga
    console.log(persona)
    if(!persona){
        //return res.status(404).send("Non trovato");
        return res.status(404).json({messaggio:"non trovato", code:404})
    }
    res.json(persona);
})


//UTILIZZO DI QUERY STRING PARAM NEL CODICE SEGUENTE:
app.get('/personeQueryParam/search',(req,res)=>{
    const {query,limit} = req.query;
    let personeFiltrate = [...persone];

    //http://127.0.0.1:3000/personeQueryParam/search?query=L restituisce persone il cui nome inizia per L
    if(query){
        personeFiltrate = personeFiltrate.filter((persona)=>{
            return persona.nome.startsWith(query);
        })
    }

    //http://127.0.0.1:3000/personeQueryParam/search?query=L&limit=3 restituisce le prime 3 persone il cui nome inizia per L
    if(limit){
        personeFiltrate = personeFiltrate.slice(0,Number(limit));
    }

    if(personeFiltrate.length<1){
        return res.status(200).json({success: true, data:[], message:`nessuna persona trovata che inizia per ${query}`});
    }

    res.status(200).json(personeFiltrate)
})

app.listen(3000);