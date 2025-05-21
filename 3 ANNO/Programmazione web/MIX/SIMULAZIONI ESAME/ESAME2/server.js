const express = require("express");
const app = express();
app.use(express.static(__dirname));

let counter = 5

app.get('/',(req,res)=>{
    res.sendFile("index.html")
})

app.get('/counter',(req,res)=>{
    res.json({"counter":counter})
})

app.post('/increase',(req,res)=>{
    counter += 1;
    res.json({"counter":counter})
})

app.post('/decrease',(req,res)=>{
    counter -= 1;
    res.json({"counter":counter}) 
})

app.get('/colors',(req,res)=>{
    res.json({"background":"#882200","text":"#44DDAA"});
})



app.listen(3000);