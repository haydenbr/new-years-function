const standardHandler = require('../../common').standardHandler;
const GET = require('./get');
const methodHandlers = { GET };

function main(context, req) {
	standardHandler(context, req, methodHandlers);
}

module.exports = main;
