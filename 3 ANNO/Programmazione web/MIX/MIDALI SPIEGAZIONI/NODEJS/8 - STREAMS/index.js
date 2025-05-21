/**
 * Stream
 * - sono un flusso di dati divisi in pezzi chiamati chunk
 * - leggere i file con stream 
 */

const {createReadStream, /*usato per creare file: writeFileSync*/} = require('fs');

/*creazione filegrande.txt
for (let index = 0; index < 10000; index++) {
    writeFileSync('./filegrande.txt',`Ciao sono riga numero ${index}\n`,{flag:'a'});   
}
*/

const stream = createReadStream('./filegrande.txt');
stream.on('data',(result)=>{
    console.log(result);
})