const { DataTypes, Model } = require("sequelize");
const sequelize = require("../sequelize");

class User extends Model {}

User.init(
  {
    email: DataTypes.TEXT,
    password: DataTypes.TEXT,
    firstname: DataTypes.TEXT,
    lastname: DataTypes.TEXT,
    user_id: DataTypes.INTEGER,
  },
  {
    sequelize,
    tableName: "user",
  }
);

module.exports = User;