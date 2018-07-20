/// @description Given a percentage, roll a die and determine if that passes
// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 

var c = argument0;
var rand = random_range(0, 100);

if (c >= 0 && c < 1) {
	c *= 100;
}
else if (c >= 1 && c <= 10) {
	c *= 10;
}

// Return boolean
return (rand <= c)