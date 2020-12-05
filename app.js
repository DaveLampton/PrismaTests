const express = require("express");
const userRoutes = require("./routes/user");
const sourceRoutes = require("./routes/source");
const assertionRoutes = require("./routes/assertion");
//const argumentRoutes = require("./routes/argument");

const app = express();
app.use(express.json());

userRoutes(app);
sourceRoutes(app);
assertionRoutes(app);
//argumentRoutes(app);

app.listen(5000, () => console.log("Server running at http://localhost:5000"));
