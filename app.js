const { PrismaClient } = require("@prisma/client");
const express = require("express");
const { body, validationResult } = require("express-validator");

const prisma = new PrismaClient();

const app = express();
app.use(express.json());

// CREATE
app.post(
  "/user",
  [
    body("email")
      .isLength({ min: 1 })
      .withMessage("Email must not be blank")
      .isEmail()
      .withMessage("Must be a valid email address"),
    body("name").isLength({ min: 1 }).withMessage("Name must not be blank"),
    body("password")
      .isLength({ min: 1 })
      .withMessage("Password must not be blank")
      .isLength({ min: 6 })
      .withMessage("Password must be at least 6 characters"),
    body("role")
      .isIn(["SUPERADMIN", "ADMIN", "USER"])
      .withMessage(`Role must be one of 'USER', 'ADMIN', 'SUPERADMIN'`),
  ],
  async (req, res) => {
    const errors = validationResult(req);
    if (!errors.isEmpty()) {
      return res.status(400).json(errors.mapped());
    }
    const { name, email, role, password } = req.body;
    //console.log("INPUT:", name, email, role, password);
    try {
      const user = await prisma.user.create({
        data: { name, email, role, password },
      });
      return res.json(user);
    } catch (err) {
      console.error(err);
      return res.status(500).json({ error: "500 Server Error" });
    }
  }
);

// READ
app.get("/users", async (req, res) => {
  //console.log("INPUT:", name, email, role, password);
  try {
    const users = await prisma.user.findMany();
    return res.json(users);
  } catch (err) {
    console.error(err);
    return res.status(500).json({ error: "500 Server Error" });
  }
});

// UPDATE
app.put("/user/:id", async (req, res) => {
  const { name, email, role, password } = req.body;
  //console.log("INPUT:", name, email, role, password);
  try {
    const user = await prisma.user.create({
      data: { name, email, role, password },
    });
    return res.json(user);
  } catch (err) {
    console.error(err);
    return res.status(500).json({ error: "500 Server Error" });
  }
});

// DELETE

app.listen(5000, () => console.log("Server running at http://localhost:5000"));
