import express from "express";

const app = express();

app.get("/", (req, res) => {
  res.send("Hello world Is now updated!");
});

app.listen(3000, () => {
  console.log("The application is listening on port 3000!");
});
