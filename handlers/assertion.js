const { PrismaClient } = require("@prisma/client");
const { body, validationResult } = require("express-validator");

const prisma = new PrismaClient();

exports.assertionValidator = () => {
  return [
    body("text").isLength({ min: 1 }).withMessage("Text must not be blank"),
  ];
};

exports.findOne = async (req, res) => {
  try {
    const assertion = await prisma.assertion.findUnique({
      where: { id: Number(req.params.id) },
    });
    if (!assertion)
      return res.status(404).json({ error: "Assertion ID Not Found" });
    return res.json(assertion);
  } catch (err) {
    console.error(err);
    return res.status(500).json({ error: "Server Error" });
  }
};

exports.arguments = async (req, res) => {
  try {
    const arguments = await prisma.assertion
      .findUnique({
        where: { id: Number(req.params.id) },
      })
      .arguments();
    if (!arguments) {
      const assertion = await prisma.assertion.findUnique({
        where: { id: Number(req.params.id) },
      });
      if (!assertion)
        return res.status(404).json({ error: "Assertion ID Not Found" });
    }
    return res.json(arguments);
  } catch (err) {
    console.error(err);
    return res.status(500).json({ error: "Server Error" });
  }
};
