整合MAX


一、前置指令

/scoreboard objectives add 菜单 dummy

/scoreboard objectives add 传送 dummy

/scoreboard players set 负 传送 -1

/summon armor_stand 互传 ~~1~

/scoreboard objectives add 输入金额 dummy

/scoreboard objectives add 转账玩家 dummy

/scoreboard players set 十 输入金额 10

/scoreboard objectives add 基础 dummy

二、基础运行

1.replaceitem entity @a slot.hotbar 8 destroy snowball 16 0 {"minecraft:item_lock":{"mode":"lock_in_slot"}}

2.execute as @e[type=snowball] at @e[type=snowball] run scoreboard players add @p[r=2] 菜单 1

3.execute as @e[type=snowball] at @e[type=snowball] run playsound random.toast @p

4.kill @e[type=snowball]

5.title @a[scores={菜单=!0},rxm=80] actionbar §l§c已关闭 §f｜ §cMENU OFF

6.scoreboard players set @a[scores={菜单=!0},rxm=88] 菜单 0

——————————————————

7.tp @a[scores={菜单=1},rx=-88] 192 74 -79

8.kill @a[scores={菜单=3},rx=-88]

9.tp @a[scores={菜单=4},rx=-88] 214 88 -15

10./gamemode 1 @a[scores={菜单=5},rx=-88,tag=op,tag=!a]

———————————————————

11.execute  as @a[scores={菜单=1..6,菜单=!2,菜单=!6},rx=-88] at @s run title @s actionbar §l§b执行成功✔

12.execute as @a[scores={菜单=1..6,菜单=!2,菜单=!6},rx=-88] at @s run scoreboard players set @s 菜单 0

13.scoreboard players set @a[scores={菜单=2,传送=0..},rx=-85] 菜单 10

13.scoreboard players set @a[scores={菜单=6},rx=-85] 菜单 19

✟14.scoreboard players set @a[scores={菜单=7}] 菜单 1

15.execute as @a[scores={菜单=16},rx=-88] at @a[scores={菜单=16},rx=-88] run scoreboard players operation @a[scores={传送=1}] 传送 >< @a[scores={传送=0..39}] 传送

16.scoreboard players set @a[scores={菜单=16},rx=-85] 菜单 10


17.scoreboard players set @a[scores={菜单=17}] 菜单 10


18.scoreboard players set @a[scores={传送=!0..39,菜单=11..15}] 菜单 0

19.scoreboard players add @a 传送 0

20.scoreboard players add @a 菜单 0



21.execute as @a[scores={菜单=1..6}] at @a[scores={菜单=1..6}] run titleraw @s actionbar {"rawtext":[{"text":"§l§f✟雪球菜单§f✟\n§r§d༺经历祝您游戏愉快༻\n§r§7------------§l\n"},{"translate":"%%2","with":{"rawtext":[{"selector":"@s[scores={菜单=1}]"},{"text":"§b"},{"text":"§f"}]}},{"text":" 传送主城\n"},{"translate":"%%2","with":{"rawtext":[{"selector":"@s[scores={菜单=2}]"},{"text":"§b"},{"text":"§f"}]}},
{"translate":"%%2","with":{"rawtext":[{"selector":"@s[scores={菜单=1..6,传送=0..}]"},{"text":" 玩家互传\n"}]}},{"translate":"%%2","with":{"rawtext":[{"selector":"@s[scores={菜单=1..6,传送=..-40}]"},{"text":" 接受传送\n"}]}},{"translate":"%%2","with":{"rawtext":[{"selector":"@s[scores={菜单=3}]"},{"text":"§b"},{"text":"§f"}]}},{"text":" 快速重生\n"},{"translate":"%%2","with":{"rawtext":[{"selector":"@s[scores={菜单=4}]"},{"text":"§b"},{"text":"§f"}]}},{"text":" 传送商店\n"},{"translate":"%%2","with":{"rawtext":[{"selector":"@s[scores={菜单=5}]"},{"text":"§b"},{"text":"§f"}]}},{"text":" 创造模式\n"},{"translate":"%%2","with":{"rawtext":[{"selector":"@s[scores={菜单=6}]"},{"text":"§b"},{"text":"§f"}]}},{"text":" 转账菜单\n"},{"text":"§r§7-----------\n§l§a抬头确定✔\n§c低头关闭✘"}]}



22.execute  as @a[scores={菜单=10..16}] at @s run titleraw @s actionbar {"rawtext":[{"text":"§l§cTP Menu §3| §r§d请选择玩家传送\n§l§7"},{"translate":"%%2","with":{"rawtext":[{"selector":"@s[scores={菜单=11}]"},{"text":"§e✦§f→>> §e"},{"text":"§bঌ§7 "}]}},{"selector":"@a[scores={传送=0}]"},{"text":"§7\n"},{"translate":"%%2","with":{"rawtext":[{"selector":"@s[scores={菜单=12}]"},{"text":"§e✦§f→>> §e"},{"text":"§bঌ§7 "}]}},{"selector":"@a[scores={传送=1}]"},{"text":"§7\n"},{"translate":"%%2","with":{"rawtext":[{"selector":"@s[scores={菜单=13}]"},{"text":"§e✦§f→>> §e"},{"text":"§bঌ§7 "}]}},{"selector":"@a[scores={传送=2}]"},{"text":"§7\n"},{"translate":"%%2","with":{"rawtext":[{"selector":"@s[scores={菜单=14}]"},{"text":"§e✦§f→>> §e"},{"text":"§bঌ§7 "}]}},{"selector":"@a[scores={传送=3}]"},{"text":"§7\n"},{"translate":"%%2","with":{"rawtext":[{"selector":"@s[scores={菜单=15}]"},{"text":"§e✦§f→>> §e"},{"text":"§bঌ§7 "}]}},{"selector":"@a[scores={传送=4}]"},{"text":"\n"},{"translate":"%%2","with":{"rawtext":[{"selector":"@s[scores={菜单=16}]"},{"text":"§e✦§f→〉   §e"},{"text":"§f●      §6"}]}},{"text":" 刷新列表"},{"translate":"%%2","with":{"rawtext":[{"selector":"@s[scores={菜单=16}]"},{"text":"§f   〈←§e✦"},{"text":"     §f ●"}]}},{"text":"§7\n-------------------------\n§a抬头确定✔    §c低头关闭✘\n\n\n"}]}

23，/scoreboard players set @a 基础 19

24/execute as @a[scores={菜单=109..112}] at @s run titleraw @s actionbar {"rawtext":[{"text":"§l§b✟传送选择✟§f\n§r§d祝您游戏愉快\n§r§7------------§l\n"},{"translate":"%%2","with":{"rawtext":[{"selector":"@s[scores={菜单=110}]"},{"text":"§b"},{"text":"§f"}]}},{"text":" 传送商店\n"},{"translate":"%%2","with":{"rawtext":[{"selector":"@s[scores={菜单=111}]"},{"text":"§b"},{"text":"§f"}]}},{"text":" 传送副本\n"},{"translate":"%%2","with":{"rawtext":[{"selector":"@s[scores={菜单=112}]"},{"text":"§b"},{"text":"§f"}]}},{"text":" 传送地皮\n"},{"text":"§r§7-----------\n§l§a抬头确定✔\n§c低头关闭✘"}]}
三、互传部分

1.execute as @p[scores={菜单=11..15},rx=-88] at @p[scores={菜单=11..15},rx=-88] run scoreboard players set @s 传送 40

2.execute as @p[scores={菜单=11..15},rx=-88] at @p[scores={菜单=11..15},rx=-88] run scoreboard players operation @s 传送 > * 传送

3.execute as @p[scores={菜单=11..15},rx=-88] at @p[scores={菜单=11..15},rx=-88] run scoreboard players add @s 传送 1

4.execute as @p[scores={菜单=11..15},rx=-88] at @p[scores={菜单=11..15},rx=-88] run scoreboard players operation @a 传送 -= @s 菜单

5.execute as @p[scores={菜单=11..15},rx=-88] at @p[scores={菜单=11..15},rx=-88] run scoreboard players set @a[scores={传送=-11}] 菜单 100

6.tellraw @p[scores={菜单=100}] {"rawtext":[{"text":"§l>>>§b玩家§e"},{"selector":"@p[scores={菜单=11..15},rx=-85]"},{"text":"§b向你发起了传送请求\n§a请打开雪球菜单接受传送§b或§c低头拒绝传送"}]}

有条件的7.tellraw @p[scores={菜单=11..15},rx=-85] {"rawtext":[{"text":"§l>>>§b已成功向玩家§e"},{"selector":"@a[scores={菜单=100}]"},{"text":"§b发起了传送请求，请等待同意...\n§6低头可取消本次传送请求"}]}

8.execute  as @p[scores={菜单=11..15},rx=-88] at @p[scores={菜单=11..15},rx=-88] run scoreboard players operation @a 传送 += @s 菜单

9.scoreboard players operation @a[scores={菜单=100}] 传送 = @p[scores={菜单=11..15},rx=-88] 传送

10.scoreboard players operation @a[scores={菜单=100}] 传送 *= 负 传送

11.scoreboard players set @a[scores={传送=..-40,菜单=2},rx=-88] 菜单 101

12.execute as @p[scores={菜单=101}] at @p[scores={菜单=101}] run scoreboard players operation @a[scores={菜单=!101}] 传送 += @s 传送

13.execute as @p[scores={菜单=101}] at @p[scores={菜单=101}] run tp @a[scores={传送=0}] @s

14.tellraw @a[scores={菜单=101}] {"rawtext":[{"text":"§l>>>§a已成功接受了§e"},{"selector":"@a[scores={传送=0}]"},{"text":"§a的传送请求✔"}]}

有条件的15.tellraw @a[scores={传送=0}] {"rawtext":[{"text":"§l>>>§a已成功将您传送至§e"},{"selector":"@a[scores={菜单=101}]"},{"text":"§a的身边✔"}]}

16.execute as @p[scores={菜单=101}] at @p[scores={菜单=101}] run scoreboard players operation @a[scores={传送=!0}] 传送 -= @s 传送

17.scoreboard players set @r[scores={菜单=0,传送=!0..39}] 菜单 102

18.execute as @a[scores={菜单=102}] at @a[scores={菜单=102}] run scoreboard players operation @a[scores={菜单=!102}] 传送 += @s 传送

19.execute as @a[scores={传送=0}] at @a[scores={传送=0}] run scoreboard players set @a[scores={菜单=102}] 菜单 103

20.execute as @a[scores={菜单=102..103}] at @a[scores={菜单=102..103}] run scoreboard players operation @a[scores={菜单=!102..103}] 传送 -= @s 传送

有条件的21.execute as @a[scores={菜单=102,传送=39..}] at @a[scores={菜单=102,传送=39..}] run tellraw @s {"rawtext":[{"text":"§l>>>§l§c对方拒绝了你的传送请求"}]}

22.scoreboard players reset @a[scores={菜单=102}] 传送

23.scoreboard players set @a[scores={菜单=100..,菜单=!109..113}] 菜单 0

有条件的24.tellraw @a[scores={传送=41..},rxm=85] {"rawtext":[{"text":"§l>>>§6已取消了传送请求"}]}

有条件的25.tellraw @a[scores={传送=..-40},rxm=85] {"rawtext":[{"text":"§l>>>§c已拒绝了对方的传送请求"}]}

26.scoreboard players set @a[scores={传送=!0..39},rxm=88] 传送 0



四、人数变动驱动玩家列表重置

1.scoreboard players set 在线人员 传送 0

2.execute as @a[scores={传送=0..39}] at @s run scoreboard players add 在线人员 传送 1

3.scoreboard players operation @e[name=互传] 传送 -= 在线人员 传送

4.execute as @e[scores={传送=!0},name=互传] at @s run scoreboard players set @a[scores={传送=0..39}] 传送 -1

5.execute as @e[scores={传送=!0},name=互传] at @s run scoreboard players operation @a[scores={传送=-1..39}] 传送 -= @a[scores={传送=-1}] 传送

6.scoreboard players operation @e[name=互传] 传送 = 在线人员 传送


五.其他传送
/scoreboard players set @a[scores={菜单=113}] 菜单 109
商店
/tp @a[scores={菜单=110},rx=-88] -7 -60 -8
副本
/tp @a[scores={菜单=111},rx=-88] -7 -60 -12
地皮
/tp @a[scores={菜单=112},rx=-88] -7 -60 -16
重置
/scoreboard players set @a[scores={菜单=110..112},rx=-88] 菜单 0

/title @a[scores={菜单=110..112},rx=-88] actionbar §l§g传送成功✓





（没特别说明的，命令方块就是默认无条件）





二、菜单运行

⑤scoreboard players set @a[scores={菜单=33}] 菜单 20

⑥execute as @a[scores={菜单=40},rx=-88] at @s run scoreboard players operation @a[scores={转账玩家=1}] 转账玩家 >< @a[scores={转账玩家=0..39}] 转账玩家

⑦execute as @a[scores={菜单=40},rx=-85] at @s run scoreboard players set @s 菜单 34

⑧execute as @a[scores={菜单=41}] at @s run scoreboard players set @s 菜单 34

⑨scoreboard players add @a 转账玩家 0



三、转账

1.execute as @a[scores={菜单=20..30},rx=-85] at @s run scoreboard players operation @s 输入金额 *= 十 输入金额

2.execute as @a[scores={菜单=20..28},rx=-85] at @s run scoreboard players operation @s 输入金额 += @s 菜单

2-2/execute as @a[scores={菜单=20..28},rx=-85] at @s run scoreboard players operation @s 输入金额 -= @s 基础

3.execute as @a[scores={菜单=29},rx=-85] at @s run scoreboard players reset @s 输入金额

4.execute as @a[scores={菜单=30},rx=-85] at @s run scoreboard players add @s 输入金额 0

5.execute as @a[scores={菜单=20..30},rx=-85] at @s run scoreboard players set @s 菜单 32

6.execute as @a[scores={菜单=31,输入金额=1..},rx=-85] at @s run scoreboard players set @s 菜单 34

7.execute as @a[scores={菜单=35..39},rx=-88] at @s run scoreboard players operation @s 输入金额 -= @s 金币

8.execute as @a[scores={菜单=35..39,输入金额=1..},rx=-88] at @s run title @s title §l§c金币不足！

9.execute as @a[scores={菜单=35..39,输入金额=1..},rx=-88] at @s run scoreboard players set @s 菜单 32

10.（连锁有条件保持开启)execute as @a[scores={菜单=32,输入金额=1..},rx=-88] at @s run scoreboard players reset @s 输入金额

11.execute as @a[scores={菜单=35..39,输入金额=..0},rx=-88] at @s run scoreboard players operation @s 输入金额 += @s 金币

12.execute as @a[scores={输入金额=99999999..}] at @s run scoreboard players reset @s 输入金额

13.execute as @p[scores={菜单=35..39},rx=-88] at @s run scoreboard players operation @a 转账玩家 -= @s 菜单

14.execute as @p[scores={菜单=35..39},rx=-88] at @s run scoreboard players operation @a[scores={转账玩家=-35}] 金币 += @s 输入金额

15.（连锁有条件保持开启)execute as @p[scores={菜单=35..39},rx=-88] at @s run scoreboard players operation @s 金币 -= @s 输入金额

16.tellraw @p[scores={转账玩家=-35}] {"rawtext":[{"text":"§l>>>§b玩家§f"},{"selector":"@p[scores={菜单=35..39},rx=-85]"},{"text":"§b向你转账了§f"},{"score":{"name":"@p[scores={菜单=35..39},rx=-85]","objective":"输入金额"}},{"text":"§e金币"}]}

17（连锁有条件保存开启)tellraw @p[scores={菜单=35..39},rx=-85] {"rawtext":[{"text":"§l>>>§b已成功向玩家§f"},{"selector":"@p[scores={转账玩家=-35}]"},{"text":"§b转账了§f"},{"score":{"name":"@a[scores={菜单=35..39}]","objective":"输入金额"}},{"text":"§e金币"}]}

18.execute as @p[scores={菜单=35..39},rx=-88] at @s run scoreboard players operation @a 转账玩家 += @s 菜单

19.execute as @p[scores={菜单=35..39},rx=-88] at @s run scoreboard players reset @s 输入金额

20.execute as @p[scores={菜单=35..39},rx=-88] at @s run scoreboard players reset @s 菜单



四、显示

①execute as @a[scores={菜单=19..32}] at @s run titleraw @s actionbar {"rawtext":[{"text":"\n §l >>§bCoin Transfer§f<<\n\n   §r§d  请选择金额§l§7"},{"translate":"%%2%%3","with":{"rawtext":[{"selector":"@s[scores={菜单=20}]"},{"text":"§b"},{"text":"\n\n  1"}]}},{"text":"      §7"},{"translate":"%%2%%3","with":{"rawtext":[{"selector":"@s[scores={菜单=21}]"},{"text":"§b"},{"text":"2"}]}},{"text":"      §7"},{"translate":"%%2%%3","with":{"rawtext":[{"selector":"@s[scores={菜单=22}]"},{"text":"§b"},{"text":"3"}]}},{"text":"§7\n"},{"translate":"%%2%%3","with":{"rawtext":[{"selector":"@s[scores={菜单=23}]"},{"text":"§b"},{"text":"  4"}]}},{"text":"      §7"},{"translate":"%%2%%3","with":{"rawtext":[{"selector":"@s[scores={菜单=24}]"},{"text":"§b"},{"text":"5"}]}},{"text":"      §7"},{"translate":"%%2%%3","with":{"rawtext":[{"selector":"@s[scores={菜单=  25}]"},{"text":"§b"},{"text":"6"}]}},{"text":"§7\n"},{"translate":"%%2%%3","with":{"rawtext":[{"selector":"@s[scores={菜单=26}]"},{"text":"§b"},{"text":"  7"}]}},{"text":"      §7"},{"translate":"%%2%%3","with":{"rawtext":[{"selector":"@s[scores={菜单=27}]"},{"text":"§b"},{"text":"8"}]}},{"text":"      §7"},{"translate":"%%2%%3","with":{"rawtext":[{"selector":"@s[scores={菜单=28}]"},{"text":"§b"},{"text":"9"}]}},{"text":"§7\n"},{"translate":"%%2%%3","with":{"rawtext":[{"selector":"@s[scores={菜单=29}]"},{"text":"§b"},{"text":" 删除"}]}},{"text":"§7"},{"translate":"%%2%%3","with":{"rawtext":[{"selector":"@s[scores={菜单=30}]"},{"text":"§b"},{"text":"    0"}]}},{"text":"§7"},{"translate":"%%2%%3","with":{"rawtext":[{"selector":"@s[scores={菜单=31}]"},{"text":"§b"},{"text":"    确定"}]}},{"text":"  §7"},{"text":"\n\n§l§a抬头确认✔§c低头取消✘\n\n§6转账金额 §f： §e"},{"score":{"name":"@s","objective":"输入金额"}},{"text":"§7\n\n\n\n"}]}

②execute as @a[scores={菜单=34..40}] at @s run titleraw @s actionbar {"rawtext":[{"text":"§l§cTransfer Menu §3| §r§d选择玩家转账\n§l§7"},{"translate":"%%2 %%3","with":{"rawtext":[{"selector":"@s[scores={菜单=35}]"},{"text":" §e✦§f→>>§e"},{"selector":"@a[scores={转账玩家=0}]"}]}},{"text":"§7\n"},{"translate":"%%2 %%3","with":{"rawtext":[{"selector":"@s[scores={菜单=36}]"},{"text":" §e✦§f→>>§e"},{"selector":"@a[scores={转账玩家=1}]"}]}},{"text":"§7\n"},{"translate":"%%2 %%3","with":{"rawtext":[{"selector":"@s[scores={菜单=37}]"},{"text":" §e✦§f→>>§e"},{"selector":"@a[scores={转账玩家=2}]"}]}},{"text":"§7\n"},{"translate":"%%2 %%3","with":{"rawtext":[{"selector":"@s[scores={菜单=38}]"},{"text":" §e✦§f→>>§e"},{"selector":"@a[scores={转账玩家=3}]"}]}},{"text":"§7\n"},{"translate":"%%2 %%3","with":{"rawtext":[{"selector":"@s[scores={菜单=39}]"},{"text":" §e✦§f→>>§e"},{"selector":"@a[scores={转账玩家=4}]"}]}},{"text":"§b\n"},{"translate":"%%2%%3","with":{"rawtext":[{"selector":"@s[scores={菜单=40}]"},{"text":"§e✦ §f→ >>§6"},{"text":"刷新列表"}]}},{"text":"§e\n"},{"text":"§a§l抬头确定✔    §c低头取消✘\n\n§7------------------------------\n\n\n"}]}



④scoreboard players reset @a[rxm=88,scores={菜单=!0}] 输入金额




五、人数变动驱动玩家列表重置

①scoreboard players set now 转账玩家 0

②execute as @a[scores={转账玩家=0..39}] at @s run scoreboard players add now 转账玩家 1

③scoreboard players operation @e[name=last] 转账玩家 -= now 转账玩家

④execute as @e[scores={转账玩家=!0},name=last] at @s run scoreboard players set @a[scores={转账玩家=0..39}] 转账玩家 -1

⑤execute as @e[scores={转账玩家=!0},name=last] at @s run scoreboard players operation @a[scores={转账玩家=-1..39}] 转账玩家 -= @a[scores={转账玩家=-1}] 转账玩家

⑥scoreboard players operation @e[name=last] 转账玩家 = now 转账玩家



六、防止盔甲架消失（如果你能保证盔甲架一直存在的可不做，不要老是来问为什么玩家名字在一行，原因就是你的盔甲架没了）

①testfor @e[name=last]

②summon armor_stand last ~~1~


黄标replaceitem entity @a slot.hotbar 8 destroy experience_bottle 16 0 {"minecraft:item_lock":{"mode":"lock_in_slot"}}

give @a[hasitem={item=experience_bottle,data=1,quantity=0}] experience_bottle 16 1 {"minecraft:item_lock":{"mode":"lock_in_inventory"}}