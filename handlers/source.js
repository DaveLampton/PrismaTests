const { PrismaClient } = require("@prisma/client");
const { body, validationResult } = require("express-validator");

const prisma = new PrismaClient();

exports.sourceValidator = () => {
  return [
    body("domain")
      .isLength({ min: 1 })
      .withMessage("Domain must not be blank")
      .isFQDN()
      .withMessage("Must be a domain name"),
    body("score")
      .isFloat({ gt: 0, lt: 100 })
      .withMessage("Score must be greater than 0 and less than 100"),
  ];
};

exports.create = async (req, res) => {
  try {
    const errors = validationResult(req);
    if (!errors.isEmpty()) {
      return res.status(400).json(errors.mapped());
    }
    const { domain, score } = req.body;
    const existingSource = await prisma.source.findUnique({
      where: { domain },
    });
    if (existingSource) {
      return res.status(400).json({
        Error:
          "A source with domain " + existingSource.domain + " already exists",
      });
    }
    const source = await prisma.source.create({
      data: { domain, score },
    });
    return res.json(source);
  } catch (err) {
    console.error(err);
    return res.status(500).json("500 Server error");
  }
};

exports.getAll = async (req, res) => {
  try {
    const sources = await prisma.source.findMany();
    return res.json(sources);
  } catch (err) {
    console.error(err);
    return res.status(500).json({ error: "Server Error" });
  }
};

exports.findOne = async (req, res) => {
  try {
    const source = await prisma.source.findUnique({
      where: { id: Number(req.params.id) },
    });
    if (!source) return res.status(404).json({ error: "Source ID Not Found" });
    return res.json(source);
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
    let source = await prisma.source.findUnique({
      where: { id: Number(req.params.id) },
    });
    if (!source) return res.status(404).json({ error: "Source ID Not Found" });
    const { domain, score } = req.body;
    source = await prisma.source.update({
      where: { id: Number(req.params.id) },
      data: { domain, score },
    });
    return res.json(source);
  } catch (err) {
    console.error(err);
    return res.status(500).json({ error: "Server Error" });
  }
};

exports.delete = async (req, res) => {
  try {
    let source = await prisma.source.findUnique({
      where: { id: Number(req.params.id) },
    });
    if (!source) return res.status(404).json({ error: "Source ID Not Found" });
    const { name, email, role, passwordHash } = req.body;
    source = await prisma.source.delete({
      where: { id: Number(req.params.id) },
    });
    return res.json(source);
  } catch (err) {
    console.error(err);
    return res.status(500).json({ error: "Server Error" });
  }
};

exports.users = async (req, res) => {
  try {
    const users = await prisma.source
      .findUnique({
        where: { id: Number(req.params.id) },
      })
      .users();
    if (!users) {
      const source = await prisma.source.findUnique({
        where: { id: Number(req.params.id) },
      });
      if (!source)
        return res.status(404).json({ error: "Source ID Not Found" });
    }
    return res.json(users);
  } catch (err) {
    console.error(err);
    return res.status(500).json({ error: "Server Error" });
  }
};
