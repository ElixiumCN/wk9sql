const Movie = require("./table")

// Create
exports.addMovie = async (movieObject) => {
    try {
        await Movie.create(movieObject);
    } catch (error) {
        console.log(error)
    }
}

// Read
exports.listMovies = async () => {
    try {
        let list = await Movie.findAll();
        console.table(list.map( ({id, title, actor}) => ({id, title, actor})));
    } catch (error) {
        console.log(error)
    }
};

// Update

exports.updateMovie = async (movieObject) => {
    try {
        await Movie.update(movieObject, {where: movieObject});
        console.log({movieObject});
        console.log("^ Movie Object ^");
    } catch (error) {
        console.log(error)
    }
}



// Delete

exports.deleteMovie = async (movieObject) => {
    try {
        await Movie.destroy({where: movieObject});
    } catch (error) {
        console.log(error)
    }
}
