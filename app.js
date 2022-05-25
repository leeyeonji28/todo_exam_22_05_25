import express from "express";
import cors from "cors";

const app = express();
const appPort = 3000;

var corsOptions = {
  origin: "https://cdpn.io",
  optionsSuccessStatus: 200,
};

app.use(cors(corsOptions));
app.use(express.json());

app.get(`/todos`, (req, res) => {
  return res.json([
    {
      id: 1,
    },
    {
      id: 2,
    },
  ]);
});

app.listen(appPort, () => {
  console.log(`App listening on port ${appPort}`);
});
