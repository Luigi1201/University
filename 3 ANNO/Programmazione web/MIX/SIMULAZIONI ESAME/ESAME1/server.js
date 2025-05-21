const express = require('express')
const app = express()
const dati = require("./dati.json")
app.use(express.static(__dirname));

//ESERCIZIO1
app.get('/citations', (req, res) => {
    console.log(dati)
    res.json(dati)
})

//ESERCIZIO2
app.get('/citations/:id', (req, res) => {
    try{
        let idParam = req.params.id
        let citazioneCercata = dati.find(citazione=>citazione.ID==idParam)
        if(citazioneCercata){
            res.json(citazioneCercata)
        }else{
            //ESERCIZIO3
            res.send({"status":"fail","message":"not found","code":404})
        }
    }catch(e){
        res.send({"status":"error","message":e})
    }
    
})

app.get('/',(req,res)=>{
    res.sendFile("/index.html")
})

//ESERCIZIO3
app.all('*',(req,res)=>{
    res.json({"status":"fail","message":"Not Found","code":404})
})

app.listen(3000)