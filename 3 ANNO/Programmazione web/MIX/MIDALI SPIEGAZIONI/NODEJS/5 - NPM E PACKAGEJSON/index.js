/**PARTE SU NPM
 * - NPM = Node Package Manager (permette di gestire i pacchetti di node, quindi anche di implementare package esterni)
 * - pacchetto (codice riutilizzabile) - folder che contiene codice js
 * - pacchetto (package) <--> dipendenza (dependency) <--> modulo (modulo)
 * - comandi
 *      npm
 *      npm --version
 *      npm i/install nome_pacchetto
 *      npm install -g nome_pacchetto
 *      npm uninstall
 * - differenza tra installazione locale e globale
 *      locale = fatta solo su cartella progetto
 *      globale = "sul computer"
 */


/**PARTE PACKAGE JSON
 * - package.json è un file manifest con le info del nostro progetto
 * - si crea manualmente con "npm init" oppure "npm init -y" (all'interno della console)
 * - installiamo pacchetto lodash tramite "npm i lodash" //si creano "package-lock.json" e "node_modules"
 * - installiamo bootstrap tramite "npm i bootstrap"
 * - disinstallare pacchetto tramite "npm uninstall nomepackage"
 *      disinstalliamo bootstrap tramite "npm uninstall bootstrap" 
 * 
 */

const _ = require('lodash');
const oggetti = [1,[2,[3,[4]]]];
const oggetti2 = _.flatMapDeep(oggetti); //utilizzo lodash
console.log(oggetti);
console.log(oggetti2); 