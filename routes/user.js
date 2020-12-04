const user = require("../handlers/user");
const { body } = require("express-validator");

module.exports = (app) => {
  // Create a User
  app.post("/v1/user", user.userValidator(), user.create);

  // Get all Users
  app.get("/v1/users", user.getAll);

  // Find a User
  app.get("/v1/user/:id", user.findOne);

  // Update a User
  app.put("/v1/user/:id", user.userValidator(), user.update);

  // Delete a User
  app.delete("/v1/user/:id", user.delete);
};
