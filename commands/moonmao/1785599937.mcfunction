#前置：scoreboard objectives add kick dummy

playanimation @a[scores={kick=-9999..9999}] animation.player.attack.positions _ 0 "(!q.is_local_player)?{return0;};v.ZM.f1=1;v.ZM.f2=1;v.ZM.f3=1;v.ZM.f4=1;v.ZM.f5=1;v.ZM.f6=1;v.ZM.f7=1;v.ZM.f8=1;v.ZM.f9=1;v.ZM.f0=1;v.t=v.ZM;v.ZM.c1=v.t;v.ZM.c2=v.t;v.ZM.c3=v.t;v.ZM.c4=v.t;v.ZM.c5=v.t;v.ZM.c6=v.t;v.ZM.c7=v.t;v.ZM.c8=v.t;v.ZM.c9=v.t;v.ZM.c0=v.t;" boom
scoreboard players reser * kick
function namespace:kick.mcfunction#复制指令到命令块里无需这句话