/**
 * Event Emitters 
 * 
 * - introduzione event driven programming (client/server) events
 * - importare modulo events
 * - creare un eventEmitter
 * - metodi on e emit
 *      con on registriamo un evento
 *      con emit lanciamo un evento (che deve essere già registrato)
 * - passare valori
 * 
 */

const EventEmitter = require('events');
const customEmitter = new EventEmitter();

customEmitter.on('messaggio',(nome,anno)=>{
    console.log(`Ciao sono ${nome} e sono partito nell'anno ${anno}`);
}); //"iscrizione" all'evento messaggio tramite metodo on

customEmitter.emit('messaggio','luigi',2024)//emissione dell'evento tramite emit (lo facciamo partire), deve essere dopo on()
