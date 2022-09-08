// node src/app.js --create --title "Batman" --actor "Christian Bale"
// node src/app.js --create --title "Batman 2" --actor "Some Guy"
// node src/app.js --read

const yargs = require("yargs")
const { sequelize } = require("./db/connection.js")
const { addMovie } = require("./movies/functions.js")
const { listMovies } = require("./movies/functions.js")
const { deleteMovie } = require("./movies/functions.js")

const app = async (yargsObject) => {
    try {
        await sequelize.sync()
        if (yargsObject.create) {
            // Create
            await addMovie({title: yargsObject.title, actor: yargsObject.actor})
            console.log(await listMovies())
        } else if (yargsObject.read) {
            console.log(await listMovies())
            // Read
        } else if (yargsObject.update) {
            // Update

        } else if (yargsObject.delete) {
            // Delete
            await deleteMovie({title: yargsObject.title, actor: yargsObject.actor})
        } else {
            console.log("Incorrect Command")
        }

    } catch (error) {
        console.log(error)
    }
}

app(yargs.argv)

