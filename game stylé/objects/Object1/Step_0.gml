var mov_x = 0;
var mov_y = 0;

// Determine movement direction based on key presses
if (keyboard_check(vk_left)) {
    mov_x -= 1;
}
if (keyboard_check(vk_right)) {
    mov_x += 1;
}
if (keyboard_check(vk_up)) {
    mov_y -= 1;
}
if (keyboard_check(vk_down)) {
    mov_y += 1;
}

// Normalize vector if both components are non-zero to maintain consistent speed in all directions
if (mov_x != 0 && mov_y != 0) {
    var len = sqrt(mov_x * mov_x + mov_y * mov_y);
    mov_x /= len;
    mov_y /= len;
}

// Apply movement
x += mov_x * xspd;
y += mov_y * xspd;