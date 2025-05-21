const fs = require("fs");

fs.readFile("input.txt", "utf-8", (err, data) => {
  console.log("CallBack Async");
  console.log("Ho letto in modo asincrono:" + data);
});
const file = fs.readFileSync("input.txt", "utf-8");
console.log("Ho letto:" + file);
console.log("-----");
