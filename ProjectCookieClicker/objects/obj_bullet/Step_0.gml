//se sair da room é apagado
if global.pause exit
if (x < 0 || x > room_width || y < 0 || y > room_height) {
    instance_destroy();
}