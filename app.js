const express = require("express");
const userRoutes = require("./routes/user");

const app = express();
app.use(express.json());

userRoutes(app);

app.listen(5000, () => console.log("Server running at http://localhost:5000"));
