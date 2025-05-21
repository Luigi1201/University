console.log("PERCORSO:", __dirname);
console.log("FILE:", __filename);

//const modulo = require("moduloCheMiInteressa");

console.log("MODULE:",module);
console.log("PROCESS:",process);

//------------------------------------------------------------------------------

const saluta = require("./utils");
const nomi = require("./nomi");
saluta(nomi);
