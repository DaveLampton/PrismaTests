const assertion = require("../handlers/assertion");
const { body } = require("express-validator");

module.exports = (app) => {
  // // Create an Assertion
  // app.post("/assertion", assertion.assertionValidator(), assertion.create);

  // Find an Assertion
  app.get("/v1/assertion/:id", assertion.findOne);

  // // Get all Assertions
  // app.get("/v1/assertions", assertion.getAll);

  // // Update an Assertion
  // app.put("/v1/assertion/:id", assertion.assertionValidator(), assertion.update);

  // // Delete an Assertion
  // app.delete("/v1/assertion/:id", assertion.delete);

  // Arguments for Assertion
  app.get("/v1/assertion/:id/arguments", assertion.arguments);
};
