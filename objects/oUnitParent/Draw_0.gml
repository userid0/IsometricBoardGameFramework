if (oGameController.debugging) {
	draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, 0, c_white, 0.25);
	draw_text_transformed_color(x, y - 16, state, 1, 1, 0, c_yellow, c_yellow, c_yellow, c_yellow, 1);
	
	// Draw Vectors
	if (oGameController.turnController.currentPlayerTurn.id == id) {
		if (!movedToX) {
			var targetCoords = GridToWorld(moveToTargetX, startBoardY);
			var dirVector	 = point_direction(x, y, targetCoords[0], targetCoords[1]);
			var lenVector	 = point_distance(x, y, targetCoords[0], targetCoords[1]);
			var moveVector	 = [lengthdir_x(lenVector, dirVector), lengthdir_y(lenVector, dirVector)];
			var normVector	 = [moveVector[0] / lenVector, moveVector[1] / lenVector];
		
			draw_line_color(x, y, x + moveVector[0], y, c_red, c_red);
			draw_line_color(x, y, x, y + moveVector[1], c_blue, c_blue);
			draw_line_color(x, y, targetCoords[0], targetCoords[1], c_yellow, c_yellow);
		}	
		// Move To Y Position
		else if (!movedToY) {
			var targetCoords = GridToWorld(moveToTargetX, moveToTargetY);
			var dirVector	 = point_direction(x, y, targetCoords[0], targetCoords[1]);
			var lenVector	 = point_distance(x, y, targetCoords[0], targetCoords[1]);
			var moveVector	 = [lengthdir_x(lenVector, dirVector), lengthdir_y(lenVector, dirVector)];
			var normVector	 = [moveVector[0] / lenVector, moveVector[1] / lenVector];
		
			draw_line_color(x, y, x + moveVector[0], y, c_red, c_red);
			draw_line_color(x, y, x, y + moveVector[1], c_blue, c_blue);
			draw_line_color(x, y, targetCoords[0], targetCoords[1], c_yellow, c_yellow);
		}
	}
}
else {
	if (active)
		draw_self();
	else
		draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, 0, c_gray, 1);
}