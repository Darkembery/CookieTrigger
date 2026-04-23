if global.current_language == language.en
global.current_language = language.ptbr

else if global.current_language == language.ptbr
global.current_language = language.en

audio_play_sound(sfx_confirmmenu, 1, 0, global.volume)