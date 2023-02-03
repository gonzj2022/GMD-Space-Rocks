/// @description Insert description here
// You can write your code in this editor
score += 10;

instance_destroy();

with(other){
	instance_destroy();
	
	if(sprite_index == spr_BigRock){
		repeat(2){
			var new_asteroid = instance_create_layer(x,y, "Instances",obj_asteroid);
			new_asteroid.sprite_index = spr_mediumRock;
		}
	} else if (sprite_index == spr_mediumRock){
		repeat(2){
			var new_asteroid = instance_create_layer(x,y, "Instances",obj_asteroid);
			new_asteroid.sprite_index = spr_smallRock;
		}
	}
	repeat(10){
	instance_create_layer(x,y,"Instances",obj_debris);
	}
}

