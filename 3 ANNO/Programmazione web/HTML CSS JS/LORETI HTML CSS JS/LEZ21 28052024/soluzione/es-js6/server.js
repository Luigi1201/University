const express = require("express");

const app = express();
const cors = require("cors");

app.use(cors());

app.get("/", (req, res) => {
  res.sendFile(__dirname + "/index.html");
});

app.get("/data", (req, res) => {
  res.json([
    { name: "Pierpaolo", age: 50 },
    { name: "Marco", age: 22 },
  ]);
});

app.listen(3000, () => {
  console.log("Server is running on port 3000");
});
