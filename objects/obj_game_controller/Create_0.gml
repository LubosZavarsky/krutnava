// Sound set to use (assigned on menu btn click)
global.audio_set = "";

// Health points
global.hp = 3;

// Collectibles
global.collect = 0;

// Set font
draw_set_font(fnt_game);

// Intro cutscene
cutscene_finished = false;

// test
room_goto(rm_game)

// --------TO DO----------


// transition animations - intro -> level, level -> roof and back, level -> dvorana and back; scernanie screenu do kruhu v strede a odcernanie naspat (ako v starych rozpravkach)
// intro cut scene - eugen vojde do budovy, ked sa kamera zastavi na spodku screenu (Marek doda sprite Eugena)
// most snp ufo odlet cut scene - mozno nechame len staticky obrazok?
// zbran (ladicka - Marek doda sprite) + strielanie, strielanie alienov po playerovi (Marek doda sprite; myslel som jednoducho, ked budu otoceni smerom k playerovi, tak nehodne vystrelia / nevystrelia v nejakom intervale)
// fix stairs - obj_solid positioning
// vyplnit level dekoraciami a alienmi - donahravam vsetky decor sprity od Mareka a spravim z nich objekty, domysliet plosiny na skakanie?
// player collision mask - idle vs run vs jump ?
// delay pri prechode do win / lost screenu, resp tiez ta transition animacia?
// 2 test sound sets (doda Majo, ked mu dame zoznam) + doplnit do kodu k interakciam
// Dvorana neni OK (ked si das obj_solid ako visible, dal som tam nejake plosiny, ale celkovo to nevyzera dobre)
// sprity zivoty, kusky partitury na zbieranie do hry (doda Marek)
// vratnica - pri prvom prechode okolo sprite s komentarom vratnika (doda Marek)


