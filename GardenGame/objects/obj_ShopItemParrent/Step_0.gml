// If not currently dragging and over our instance to be dragged, set dragging to true with left pressed mouse button. 
// This also gets our mouse_x and mouse_y relative to where we clicked.

if (!drag) {
 if (mouse_check_button_pressed(mb_left) && point_in_rectangle(mouse_x, mouse_y, x, y - node.boxtop, x + node.boxwid, y) ) {
  drag = true;
  mx = x - mouse_x;
  my = y - mouse_y;
 }
}

// Drag instance here. You will need to ADD your depth code here. //
else {
  x = mouse_x + mx;
  y = mouse_y + my;
 
// This allows us to snap to a grid if needed. If not remove it. //
  move_snap(2, 2);
 
// Until button left is released //
  if ( mouse_check_button_released(mb_left)) {
  drag = false;
 }
}