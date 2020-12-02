const user = require("../handlers/user");
const { body } = require("express-validator");

module.exports = (app) => {
  // Create a User
  app.post("/user", user.userValidator(), user.create);

  // Find a User
  app.get("/user/:id", user.findOne);

  // Get all Users
  app.get("/users", user.getAll);

  // Update a User
  app.put("/user/:id", user.userValidator(), user.update);

  // Delete a User
  app.delete("/user/:id", user.delete);
};
