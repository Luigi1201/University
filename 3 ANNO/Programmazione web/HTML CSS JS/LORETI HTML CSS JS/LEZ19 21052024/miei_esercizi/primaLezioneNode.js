"use strict";
/*
//modo sincrono
const fs = require("fs");
const file = fs.readFileSync("file.txt","utf-8");
console.log("Ho letto "+file);

//modo asincrono
fs.readFile("input.txt","utf-8",(err,data)=>{
    console.log("CallBackAsincrona");
    console.log("ho letto in modo asincrono: "+data);
});
*/


/*
const http=require("http");
const fs=require("fs");

const server=http.createServer((req, res)=>{
    console.log("req,url");
    fs.readFile(__dirname+req.url,(err,data)=>{
        if(err){
            res.writeHead(404);
            res.end("Pagina non trovata");
        }else{
            res.writeHead(200);
            res.end(data);
        }
    });
});

server.listen(8080,"127.0.0.1",()=>{
    console.log("Server in ascolto sulla porta 8080")
});

//npm init ha creato il package.json

*/

/* 
dopo npm i lodash
const _ = require("lodash");
let res=_.partition([1,2,3,4],(n)=>n%2);
console.log(res);
*/

//npm i scarica tutti i moduli che mi servono per funzionare