/// @description	Restart game, navigate to the first room.

function restart() {

  //with(all) {
	//instance_destroy();	
  //}

  //audio_stop_all();
  //draw_texture_flush();
	
	//global.audio_set = "";		
	//global.hp = 3;
	//global.collect = 0;
    
  //room_goto(rm_game);
  

    global.hp = 3;
    global.collect = 0;
	
	// with(obj_player) {
	//instance_destroy();	
	//}
    
    // Reset persistent instance variables and states
    with(obj_player) {
        
         x = initial_x;
         y = initial_y;
       
    }	
	
	// Reset vsetky objekty na povodne miesta ---> enemies, collectibles

    
    // Stop all audio and flush textures
    audio_stop_all();
    draw_texture_flush();
	
	

    
    // Go back to the game room
    room_goto(rm_game);
	
	
}