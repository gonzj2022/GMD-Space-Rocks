/// @description Insert description here
// You can write your code in this editor
switch(room){
	case rm_game:
		draw_text(20,20, "SCORE: "+string(score));
		draw_text(20,40, "LIVES: "+string(lives));
		break;
		
	case rm_start:
		draw_set_halign(fa_center)
		var c = c_orange;
			draw_text_transformed_color(
				room_width/2,100, "SPACE ROCKS",
				5, 5, 0, c,c,c,c, 1
		);
		draw_text(
			room_width/2, 200,
			@"Score 1,000 points to win!
			UP: move
			LEFT/RIGHT: change direction
			SPACE: shoot
			
			>> PRESS ENTER TO START <<
			"
		);
		draw_set_halign(fa_left)
		break;
		
	case rm_win:
		draw_set_halign(fa_center)
		var c = c_yellow;
			draw_text_transformed_color(
				room_width/2,100, "YOU WON!",
				5, 5, 0, c,c,c,c, 1
			);
			draw_text(
				room_width/2, 300,
				"Press Enter to Restart"
			);
			draw_set_halign(fa_left);
		break;
		
	case rm_gameover:
		draw_set_halign(fa_center)
		var c = c_red;
		draw_text_transformed_color(
			room_width/2,150, "YOU LOST!",
			5, 5, 0, c,c,c,c, 1
		);
		draw_text(
			room_width/2, 250,
			"Final Score: "+string(score)
		);
		draw_text(
			room_width/2, 300,
			"Press Enter To Restart"
		);
		draw_set_halign(fa_left);
		break;
}