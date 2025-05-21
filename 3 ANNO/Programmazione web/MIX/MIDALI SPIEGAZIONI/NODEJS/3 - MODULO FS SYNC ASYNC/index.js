/*MODO SINCRONO:
const {readFileSync,writeFileSync} = require('fs');

const prova = readFileSync('./prova.txt','utf8');
const ciao = readFileSync('./ciao.txt','utf8');

console.log(prova);
console.log(ciao);

writeFileSync('./prova.txt','sovrascrizione: bella'); //per sovrascrivere
writeFileSync('./prova.txt','1234567',{flag:'a'}); //flag:a sta per append

//per scrivere in un file che non esiste:
writeFileSync('./bella.txt','bella'); //file bella non esisteva prima quindi lo crea
*/

//MODO ASINCRONO:
const {readFile,writeFile} = require('fs');

readFile('./prova.txt','utf8',(error,result ) => { //l'arrow function presente come terzo parametro è una funzione di callback che si usa in quanto asincrono
    if(error){
        console.log(errore);
        return;
    }
    console.log(result);
})

writeFile('./bella.txt','bellaaaaaAAAAAAAaaaaaaaAAAAAAAAAA',(error,result ) => { 
    if(error){
        console.log(errore);
        return;
    }
    console.log(result); //undefined perchè non rimanda indietro nulla
})
