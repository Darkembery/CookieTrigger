//if spawn_delay > 0
//spawn_delay--

#region dificuldade aumentando de acordo com o tempo passado
var _reduction = global.time_alive / 2.5; 
spawn_delay = max(28, 90 - floor(_reduction));
#endregion