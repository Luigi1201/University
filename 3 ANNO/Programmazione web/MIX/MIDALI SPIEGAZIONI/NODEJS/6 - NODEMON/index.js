/**
 * USIAMO NODEMON PER EVITARE OGNI VOLTA DI DOVER SCRIVERE IN CONSOLE "NODE INDEX"
 * USIAMO QUINDI NODEMON PER RICARICARE PIU' VOLTE PIUTTOSTO CHE DOVER OGNI VOLTA RICHIAMARE NODE INDEX IN TERMINALE
 * 
 * PASSAGGI:
 * 1) npm init 
 * 2) npm install nodemon --save-dev
 * 3) modificare in package.json gli script
 *      aggiunta di script seguente "start": "nodemon index.js"
 * 4) al posto del solito "node index" chiamo nella console "npm start"
 * 
 * NOTA: dev dependencies non necessario che gli altri le scarichino se importano il nostro progetto
 * 
*/

let prova=105; //cambia valore dopo npm start e vedi cosa succede in console
console.log(prova);