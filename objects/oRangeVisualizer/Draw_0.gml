// Draw movement and attack range if parent's showMovementRange or 
// parent's showAttackRange booleans are set to true

if (parent.showingMovementRange) {
	var gridCoords = WorldToGrid(x, y);
	DrawRange(gridCoords[0], gridCoords[1], parent.movementRange, "movement");
}
else if (parent.showingAttackRange) {
	var gridCoords = WorldToGrid(x, y);
	DrawRange(gridCoords[0], gridCoords[1], parent.attackRange, "attack");
}