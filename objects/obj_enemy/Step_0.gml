vsp = vsp + grv;

// Horizontal collision - change direction
if (place_meeting(x+hsp, y, obj_turner)) {
	while (!place_meeting(x+sign(hsp), y, obj_turner)) {	
		x = x + sign(hsp);	
	}			
	walksp = -walksp;	
	image_xscale = sign(hsp);
}

// Vertical collision
if (place_meeting(x, y+vsp, obj_solid)) {

	while (!place_meeting(x, y+sign(vsp), obj_solid)) {	
		y = y + sign(vsp);			
	}	
	vsp = 0;
			
	hsp = -walksp; // when on ground, walk! (start walking left = minus)
	x = x + hsp;		
	
}

y = y + vsp;
