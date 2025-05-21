const express = require("express");
const app = express();
const datiJSON = require("./dati.json")

app.use(express.static(__dirname));


app.get('/articoli',(req,res)=>{
    res.json(datiJSON)
})

app.get('/autori',(req,res)=>{
    let array = [];
    datiJSON.forEach(singoloElem=>{
        array.push(singoloElem.autore)
        console.log(array)
    })
    res.json(array)
})


app.listen(3000);
/*npm run start */