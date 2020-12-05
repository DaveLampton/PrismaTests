const { PrismaClient } = require("@prisma/client");
const { body, validationResult } = require("express-validator");

const prisma = new PrismaClient();

exports.userValidator = () => {
  return [
    body("email")
      .isLength({ min: 1 })
      .withMessage("Email must not be blank")
      .isEmail()
      .withMessage("Must be a valid email address"),
    body("name").isLength({ min: 1 }).withMessage("Name must not be blank"),
    body("passwordHash")
      .isLength({ min: 1 })
      .withMessage("Password must not be blank")
      .isLength({ min: 6 })
      .withMessage("Password must be at least 6 characters"),
    body("role")
      .isIn(["SUPERADMIN", "ADMIN", "USER", undefined])
      .withMessage(`Role must be one of 'USER', 'ADMIN', 'SUPERADMIN'`),
  ];
};

exports.create = async (req, res) => {
  try {
    const errors = validationResult(req);
    if (!errors.isEmpty()) {
      return res.status(400).json(errors.mapped());
    }
    const { name, email, role, passwordHash } = req.body;
    const existingUser = await prisma.user.findUnique({
      where: { email },
    });
    if (existingUser) {
      return res.status(400).json({
        Error:
          "An account with email " + existingUser.email + " already exists",
      });
    }
    const user = await prisma.user.create({
      data: { name, email, role, passwordHash },
    });
    return res.json(user);
  } catch (err) {
    console.error(err);
    return res.status(500).json("500 Server error");
  }
};

exports.getAll = async (req, res) => {
  try {
    const users = await prisma.user.findMany();
    return res.json(users);
  } catch (err) {
    console.error(err);
    return res.status(500).json({ error: "Server Error" });
  }
};

exports.findOne = async (req, res) => {
  try {
    const user = await prisma.user.findUnique({
      where: { id: Number(req.params.id) },
    });
    if (!user) return res.status(404).json({ error: "User ID Not Found" });
    return res.json(user);
  } catch (err) {
    console.error(err);
    return res.status(500).json({ error: "Server Error" });
  }
};

exports.update = async (req, res) => {
  try {
    const errors = validationResult(req);
    if (!errors.isEmpty()) {
      return res.status(400).json(errors.mapped());
    }
    let user = await prisma.user.findUnique({
      where: { id: Number(req.params.id) },
    });
    if (!user) return res.status(404).json({ error: "User ID Not Found" });
    const { name, email, role, passwordHash } = req.body;
    user = await prisma.user.update({
      where: { id: Number(req.params.id) },
      data: { name, email, role, passwordHash },
    });
    return res.json(user);
  } catch (err) {
    console.error(err);
    return res.status(500).json({ error: "Server Error" });
  }
};

exports.delete = async (req, res) => {
  try {
    let user = await prisma.user.findUnique({
      where: { id: Number(req.params.id) },
    });
    if (!user) return res.status(404).json({ error: "User ID Not Found" });
    const { name, email, role, passwordHash } = req.body;
    user = await prisma.user.delete({
      where: { id: Number(req.params.id) },
    });
    return res.json(user);
  } catch (err) {
    console.error(err);
    return res.status(500).json({ error: "Server Error" });
  }
};
