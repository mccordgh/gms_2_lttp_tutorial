/// @description Get Input

right_ = keyboard_check(vk_right);
left_ = keyboard_check(vk_left);
up_ = keyboard_check(vk_up);
down_ = keyboard_check(vk_down);

action_one_pressed_ = keyboard_check_pressed(ord("Z"));
action_two_pressed_ = keyboard_check_pressed(ord("X"));

right_pressed_ = keyboard_check_pressed(vk_right);
left_pressed_ = keyboard_check_pressed(vk_left);

pause_pressed_ = keyboard_check_pressed(vk_enter);

left_mouse_pressed_ = mouse_check_button_pressed(mb_left);
