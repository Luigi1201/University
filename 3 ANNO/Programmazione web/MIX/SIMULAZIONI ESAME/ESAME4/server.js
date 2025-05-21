const express = require("express");
const app = express();

const datiJSON = require("./dati.json")

app.use(express.static(__dirname));


app.get('/',(req,res)=>{
    //res.status(200).json({success:true})
    res.status(200).sendFile("index.html")
})

app.get('/persone',(req,res)=>{
    res.json(datiJSON)
})

app.get('/persone/:id',(req,res)=>{
    const idParam = req.params.id
    datiJSON.forEach(singolo=>{
        if(singolo.id==idParam){
            res.json(singolo)
        }
    })
})



app.listen(3000);
