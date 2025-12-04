var num = irandom_range(0, 3);
show_debug_message(string_concat("num: ", num));

switch(num) {
	case 1:
	current_action = action.walking;
	alarm[0] = random_range(3, 8)*second;
	break;
	case 2:
	current_action = action.idle;
	break;
	case 3:
	current_action = action.sleeping;
	break;
	default:
	current_action = action.sleeping;
	break;
}

alarm[1] = random_range(5, 10)*second;