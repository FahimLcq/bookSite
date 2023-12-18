const User = require("./user");
const Tag = require("./tag");
const Role = require("./role");
const Book = require("./book");

Role.hasMany(User, {
  as: "users",
  foreignKey: "role_id",
});

User.belongsTo(Role, {
  as: "role",
  foreignKey: "role_id",
});

User.hasMany(Book, {
  as: "books",
  foreignKey: "user_id",
});

Book.belongsTo(User, {
  as: "user",
  foreignKey: "user_id",
});

Book.belongsToMany(Tag, {
  as: "tags",
  through: "book_has_tag",
  foreignKey: "book_id",
  otherKey: "tag_id",
  timestamps: false,
});

Tag.belongsToMany(Book, {
  as: "books",
  through: "book_has_tag",
  foreignKey: "tag_id",
  otherKey: "book_id",
  timestamps: false,
});

module.exports = { Role, User, Book, Tag };
