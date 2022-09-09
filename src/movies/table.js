const { DataTypes } = require("sequelize")
const { sequelize } = require("../db/connection")

// Database Schema

const Movie = sequelize.define("Movie", {
    title: {
        type: DataTypes.STRING,
        allowNull: false, // This means that the string can't be empty.
        unique: true,
    },
    actor: {
        type: DataTypes.STRING,
        defaultValue: "Not specified"
    }
});

// const User = sequelize.define("User", {
//     name: {
//         type: DataTypes.STRING,
//         allowNull: false, // 
//         unique: true,
//         defaultValue: "Not specified"

//     },
//     hairstyle: {
//         type: DataTypes.STRING,
//         defaultValue: "Not specified"
//     }
// });

module.exports = Movie
// module.exports = User