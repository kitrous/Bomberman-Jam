var _right = keyboard_check(ord("D"));
var _left = keyboard_check(ord("A"));
var _up = keyboard_check(ord("W"));
var _down = keyboard_check(ord("S"));

var _xinput = _right - _left;
var _yinput = _down - _up;



if (_xinput != 0 && _yinput != 0) {
	_xinput *= 0.7071;
	_yinput *= 0.7071;
}



if (_xinput != 0) {
	var h_move = _xinput * myspd;
	var horizontal_collision = move_and_collide(h_move, 0,oWall);
}

if (_yinput != 0) {
	var v_move = _yinput * myspd;
	var vertical_collision = move_and_collide(0, v_move,oWall);
}

if (_xinput == 0){

sprite_index = sBomber;

} else if (_xinput == 1) {
	
	sprite_index = sBomberWalk;
	
} else if (_xinput == -1) {
	
sprite_index = sBomberWalkL

}

