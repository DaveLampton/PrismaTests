const source = require("../handlers/source");
const { body } = require("express-validator");

module.exports = (app) => {
  // Create a Source
  app.post("/v1/source", source.sourceValidator(), source.create);

  // Get all Sources
  app.get("/v1/sources", source.getAll);

  // Find a Source
  app.get("/v1/source/:id", source.findOne);

  // Update a Source
  app.put("/v1/source/:id", source.sourceValidator(), source.update);

  // Delete a Source
  app.delete("/v1/source/:id", source.delete);
};
