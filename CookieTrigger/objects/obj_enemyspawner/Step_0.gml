//if spawn_delay > 0
//spawn_delay--

#region dificuldade aumentando de acordo com o tempo passado
var _reduction = global.time_alive / 5.15; 
spawn_delay = max(25, 60 - floor(_reduction));
#endregion