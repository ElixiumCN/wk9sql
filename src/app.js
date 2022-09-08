const yargs = require("yargs")
const { sequelize } = require("./db/connection.js")
const { addMovie } = require("./movies/functions.js")
const { listMovies } = require("./movies/functions.js")
const { deleteMovie } = require("./movies/functions.js")
const { updateMovie } = require("./movies/functions.js")

const app = async (yargsObject) => {
    try {
        await sequelize.sync()
        if (yargsObject.create) {
            await addMovie({title: yargsObject.title, actor: yargsObject.actor})
            console.log(await listMovies())
        } else if (yargsObject.read) {
            console.log(await listMovies())
        } else if (yargsObject.update) {
            await updateMovie({title: yargsObject.title, actor: yargsObject.actor}, {title: yargsObject.newT, actor: yargsObject.newA});
                console.log(await listMovies());
        } else if (yargsObject.delete) {
            await deleteMovie({title: yargsObject.title, actor: yargsObject.actor})
            console.log(await listMovies())
        } else {
            console.log("Incorrect Command")
        }

    } catch (error) {
        console.log(error)
    }
}

app(yargs.argv)

