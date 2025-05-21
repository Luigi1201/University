require("dotenv").config();
const colors = require("colors");

const { cl, clt } = require("./log");

cl("Ciao");
clt("Ciao 3");

//console.log(dayjs().format());

console.log("Hello from index.js".red);

console.log("Il mio DB è " + process.env.DB_URL);
