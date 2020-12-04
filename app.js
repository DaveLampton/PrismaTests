const express = require("express");
const userRoutes = require("./routes/user");
//const assertionRoutes = require("./routes/assertion");
const sourceRoutes = require("./routes/source");

const app = express();
app.use(express.json());

userRoutes(app);
//assertionRoutes(app);
sourceRoutes(app);

app.listen(5000, () => console.log("Server running at http://localhost:5000"));
