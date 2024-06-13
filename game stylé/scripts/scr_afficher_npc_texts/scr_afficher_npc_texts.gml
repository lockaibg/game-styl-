function print_text(_txt) {
    var alphabet_sprites = [
        spr_alphabet_a, spr_alphabet_b, spr_alphabet_c, spr_alphabet_d, spr_alphabet_e, 
        spr_alphabet_f, spr_alphabet_g, spr_alphabet_h, spr_alphabet_i, spr_alphabet_j, 
        spr_alphabet_k, spr_alphabet_l, spr_alphabet_m, spr_alphabet_n, spr_alphabet_o, 
        spr_alphabet_p, spr_alphabet_q, spr_alphabet_r, spr_alphabet_s, spr_alphabet_t, 
        spr_alphabet_u, spr_alphabet_v, spr_alphabet_w, spr_alphabet_x, spr_alphabet_y, 
        spr_alphabet_z, spr_alphabet_int, spr_alphabet_esc, spr_alphabet_dot, spr_alphabet_ddot, 
        spr_alphabet_virg, spr_alphabet_po, spr_alphabet_pf, spr_alphabet_dquote, spr_alphabet_quote, 
        spr_alphabet_tir
    ];

    var special_chars = "?!.:,()\"'-";

    var char_to_sprite = ds_map_create();

    // Alphabet
    var alphabet = "abcdefghijklmnopqrstuvwxyz";
    for (var i = 1; i <= string_length(alphabet); i++) {
        var char = string_char_at(alphabet, i);
        ds_map_add(char_to_sprite, char, alphabet_sprites[i - 1]);
    }

    // Special characters
    var special_sprites = [
        spr_alphabet_int, spr_alphabet_esc, spr_alphabet_dot, spr_alphabet_ddot,
        spr_alphabet_virg, spr_alphabet_po, spr_alphabet_pf, spr_alphabet_dquote, 
        spr_alphabet_quote, spr_alphabet_tir
    ];

    for (var j = 1; j <= string_length(special_chars); j++) {
        var char = string_char_at(special_chars, j);
        ds_map_add(char_to_sprite, char, special_sprites[j - 1]);
    }

    instance_create_layer(16, camera_get_view_height(view_camera[0]) - 48, "Instances", obj_bg_text);
    var coord_x = 0;
    var coord_y = 0;
    var max_width = 240;

    var words = string_split(_txt, " ");
    
    for (var w = 0; w < array_length(words); w++) {
        var word = words[w];
        var word_length = 0;

        // Calculate the length of the word
        for (var k = 1; k <= string_length(word); k++) {
            var char = string_char_at(word, k);
            if (ds_map_exists(char_to_sprite, char)) {
                switch (char) {
                    case "i": case ".": case ":": case "!": case "'": case ",": 
                        word_length += 4;
                        break;
                    case "j": case "y":
                        word_length += 9;
                        break;
                    case "p": case "q": case "g":
                        word_length += 11;
                        break;
                    case "m":
                        word_length += 18;
                        break;
                    case "w": 
                        word_length += 15;
                        break;
                    case "v": case "s": case "h": 
                        word_length += 9;
                        break;
                    case "t": case "(": case ")": case "\"": case "f": 
                        word_length += 7;
                        break;
                    case "u": case "r":
                        word_length += 10;
                        break;
                    case "l":
                        word_length += 6;
                        break;
                    default:
                        word_length += 11;
                }
            }
        }

        // Check if the word fits on the current line
        if (coord_x + word_length > max_width) {
            coord_x = 0;
            coord_y += 19;
        }

        // Draw the word
        for (var i = 1; i <= string_length(word); i++) {
            var char = string_char_at(word, i);

            if (ds_map_exists(char_to_sprite, char)) {
                var _instance = instance_create_layer(coord_x, coord_y, "Instances", obj_alphabet);
                _instance.cord_x = coord_x;
                _instance.cord_y = coord_y;

                var sprite = ds_map_find_value(char_to_sprite, char);
                _instance.letter = sprite;

                switch (char) {
                    case "i": case ".": case ":": case "!": case "'": case ",": 
                        coord_x += 4;
                        break;
                    case "j": case "y": 
                        _instance.cord_y += 3;
                        coord_x += 9;
                        break;
                    case "p": case "q": case "g":
                        _instance.cord_y += 3;
                        coord_x += 11;
                        break;
                    case "m": 
                        coord_x += 18;
                        break;
                    case "w":
                        coord_x += 15;
                        break;
                    case "v": case "s": case "h": 
                        coord_x += 9;
                        break;
                    case "t": case "(": case ")": case "\"": case "f": 
                        coord_x += 7;
                        break;
                    case "u": case "r":
                        coord_x += 10;
                        break;
                    case "l": 
                        coord_x += 6;
                        break;
                    default:
                        coord_x += 11;
                }
            }
        }

        // Add a space after the word
        coord_x += 16;
    }
}

function destroy_text() {
	instance_destroy(obj_bg_text)
	for(var i = instance_number(obj_alphabet); i >= 0; i--)
	{
		instance_destroy(instance_find(obj_alphabet, i));
	}
}