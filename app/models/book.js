const { DataTypes, Model } = require("sequelize");
const sequelize = require("../sequelize");

class Book extends Model {}

Book.init(
  {
    title: DataTypes.TEXT,
    author: DataTypes.TEXT,
    description: DataTypes.TEXT,
    price: DataTypes.INTEGER,
    user_id: DataTypes.INTEGER,
  },
  {
    sequelize,
    tableName: "book",
  }
);

module.exports = Book;
