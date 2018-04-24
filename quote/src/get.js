const getRandomQuote = require('./quotes');

function get(req) {
	return Promise.resolve({ quote: getRandomQuote() });
}

module.exports = get;
