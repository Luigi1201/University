/**
 * moduli built-in
 * importare modulo OS (modulo dedicato al sistema operativo)
 * userinfo, uptime, version, arch 
 * importare modulo path
 * separator, join (con sottocartelle), basename, resolve (path assoluti)
 */
const os = require('os');

console.log("Informazioni utente:",os.userInfo());
console.log("Tempo macchina accesa:",os.uptime());
console.log("Versione sistema operativo:",os.version());
console.log("Architettura:",os.arch());

const prova = {
    nome: os.type(),
    release: os.release(),
    memoria: os.totalmem(),
    disponibile: os.freemem()
}
console.log(prova);

const path = require('path');
console.log("Separatore path:",path.sep);
const percorsoFile = path.join('/cartella','sottocartella','prova.txt');
console.log("Percorso relativo creato con join:",percorsoFile);
console.log("trovato tramite basename:",path.basename(percorsoFile));
const percorsoAssoluto = path.resolve;
console.log("percorso assoluto:",percorsoAssoluto(__dirname,'cartella','sottocartella','prova.txt'));