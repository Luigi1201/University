const http = require("http");
const fs = require("fs");

const server = http.createServer((req, res) => {
  console.log(req.url);
  fs.readFile(__dirname + req.url, (err, data) => {
    if (err) {
      res.writeHead(404);
      res.end("pagina non trovata");
    } else {
      res.writeHead(200);
      res.end(data);
    }
  });
});

server.listen(8080, "127.0.0.1", () => {
  console.log("Server in ascolto sulla porta 8080");
});
