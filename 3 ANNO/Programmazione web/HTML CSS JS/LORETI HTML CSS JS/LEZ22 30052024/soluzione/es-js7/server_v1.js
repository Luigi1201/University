const express = require("express");
const fs = require("fs");
const morgan = require("morgan");
const app = express();

app.use(morgan("dev"));
app.use(express.json()); // for parsing application/json

const prod_list = JSON.parse(fs.readFileSync("data/products.json"));

app.get("/index.html", (req, res) => {
  res.sendFile(__dirname + "/index.html");
});

app.get("/api/v1/products/", (req, res) => {
  const ret_json = {
    status: "success",
    data: prod_list,
  };
  res.json(ret_json);
});

app.get("/api/v1/products/:id", (req, res) => {
  const id = req.params.id;
  const product = prod_list.find((el) => el.id == id);
  if (!product) {
    return res.status(404).json({
      status: "error",
      message: "product not found",
    });
  }
  res.json({
    status: "success",
    data: product,
  });
});

app.delete("/api/v1/products/:id", (req, res) => {
  const id = req.params.id;
  const index = prod_list.findIndex((el) => el.id == id);
  if (index == -1) {
    return res.status(404).json({
      status: "error",
      message: "product not found",
    });
  }
  prod_list.splice(index, 1);
  res.status(204).json({
    status: "success",
  });
});

app.post("/api/v1/products/", (req, res) => {
  console.log(req.body);

  // Verifica che il body della richiesta contenga i campi obbligatori
  if (!req.body.nome || !req.body.cantina) {
    return res.status(422).json({
      status: "error",
      message: "nome and cantina are required",
    });
  }
  // Creare un id
  const id = prod_list[prod_list.length - 1].id + 1;
  req.body.id = id;

  // Aggiungere il nuovo prodotto alla lista
  prod_list.push(req.body);
  res.status(201).json({
    status: "success",
    data: req.body,
  });
});

app.listen(3000, () => {
  console.log("Server is running on http://localhost:3000");
});
