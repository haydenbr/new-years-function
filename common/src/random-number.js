function getRandomNumber(upper, lower = 0) {
	return (lower) + Math.floor(Math.random()*(upper - lower + 1));
}

module.exports = getRandomNumber;
