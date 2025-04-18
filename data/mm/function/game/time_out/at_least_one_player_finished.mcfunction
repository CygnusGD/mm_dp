clear @a

schedule clear mm:game/timer
title @a times 0 40 15

#execute if entity @a[tag=p1,tag=!round_finish] unless entity @a[tag=p1,tag=spectator] run tellraw @a [{text:"[ ",color:"gray",bold:false},{selector:"@a[tag=p1,tag=!round_finish]",color:"#C41616",bold:true},{text:" lost a life!",color:"white",bold:false},{text:" ]",color:"gray",bold:false}]
#execute if entity @a[tag=p2,tag=!round_finish] unless entity @a[tag=p2,tag=spectator] run tellraw @a [{text:"[ ",color:"gray",bold:false},{selector:"@a[tag=p2,tag=!round_finish]",color:"#C41616",bold:true},{text:" lost a life!",color:"white",bold:false},{text:" ]",color:"gray",bold:false}]
#execute if entity @a[tag=p3,tag=!round_finish] unless entity @a[tag=p3,tag=spectator] run tellraw @a [{text:"[ ",color:"gray",bold:false},{selector:"@a[tag=p3,tag=!round_finish]",color:"#C41616",bold:true},{text:" lost a life!",color:"white",bold:false},{text:" ]",color:"gray",bold:false}]
#execute if entity @a[tag=p4,tag=!round_finish] unless entity @a[tag=p4,tag=spectator] run tellraw @a [{text:"[ ",color:"gray",bold:false},{selector:"@a[tag=p4,tag=!round_finish]",color:"#C41616",bold:true},{text:" lost a life!",color:"white",bold:false},{text:" ]",color:"gray",bold:false}]
#execute if entity @a[tag=p5,tag=!round_finish] unless entity @a[tag=p5,tag=spectator] run tellraw @a [{text:"[ ",color:"gray",bold:false},{selector:"@a[tag=p5,tag=!round_finish]",color:"#C41616",bold:true},{text:" lost a life!",color:"white",bold:false},{text:" ]",color:"gray",bold:false}]
#execute if entity @a[tag=p6,tag=!round_finish] unless entity @a[tag=p6,tag=spectator] run tellraw @a [{text:"[ ",color:"gray",bold:false},{selector:"@a[tag=p6,tag=!round_finish]",color:"#C41616",bold:true},{text:" lost a life!",color:"white",bold:false},{text:" ]",color:"gray",bold:false}]
#execute if entity @a[tag=p7,tag=!round_finish] unless entity @a[tag=p7,tag=spectator] run tellraw @a [{text:"[ ",color:"gray",bold:false},{selector:"@a[tag=p7,tag=!round_finish]",color:"#C41616",bold:true},{text:" lost a life!",color:"white",bold:false},{text:" ]",color:"gray",bold:false}]
#execute if entity @a[tag=p8,tag=!round_finish] unless entity @a[tag=p8,tag=spectator] run tellraw @a [{text:"[ ",color:"gray",bold:false},{selector:"@a[tag=p8,tag=!round_finish]",color:"#C41616",bold:true},{text:" lost a life!",color:"white",bold:false},{text:" ]",color:"gray",bold:false}]

execute if entity @a[tag=p1,tag=!round_finish] unless entity @a[tag=p1,tag=spectator] if score @a[tag=p1,tag=!round_finish,limit=1] lives matches 2.. run tellraw @a[tag=!in_solo_game] [{text:"[ ",color:"gray",bold:false},{selector:"@a[tag=p1,tag=!round_finish]",color:"#C41616",bold:true},{text:" lost a life!",color:"white",bold:false},{text:" ]",color:"gray",bold:false}]
execute if entity @a[tag=p2,tag=!round_finish] unless entity @a[tag=p2,tag=spectator] if score @a[tag=p2,tag=!round_finish,limit=1] lives matches 2.. run tellraw @a[tag=!in_solo_game] [{text:"[ ",color:"gray",bold:false},{selector:"@a[tag=p2,tag=!round_finish]",color:"#C41616",bold:true},{text:" lost a life!",color:"white",bold:false},{text:" ]",color:"gray",bold:false}]
execute if entity @a[tag=p3,tag=!round_finish] unless entity @a[tag=p3,tag=spectator] if score @a[tag=p3,tag=!round_finish,limit=1] lives matches 2.. run tellraw @a[tag=!in_solo_game] [{text:"[ ",color:"gray",bold:false},{selector:"@a[tag=p3,tag=!round_finish]",color:"#C41616",bold:true},{text:" lost a life!",color:"white",bold:false},{text:" ]",color:"gray",bold:false}]
execute if entity @a[tag=p4,tag=!round_finish] unless entity @a[tag=p4,tag=spectator] if score @a[tag=p4,tag=!round_finish,limit=1] lives matches 2.. run tellraw @a[tag=!in_solo_game] [{text:"[ ",color:"gray",bold:false},{selector:"@a[tag=p4,tag=!round_finish]",color:"#C41616",bold:true},{text:" lost a life!",color:"white",bold:false},{text:" ]",color:"gray",bold:false}]
execute if entity @a[tag=p5,tag=!round_finish] unless entity @a[tag=p5,tag=spectator] if score @a[tag=p5,tag=!round_finish,limit=1] lives matches 2.. run tellraw @a[tag=!in_solo_game] [{text:"[ ",color:"gray",bold:false},{selector:"@a[tag=p5,tag=!round_finish]",color:"#C41616",bold:true},{text:" lost a life!",color:"white",bold:false},{text:" ]",color:"gray",bold:false}]
execute if entity @a[tag=p6,tag=!round_finish] unless entity @a[tag=p6,tag=spectator] if score @a[tag=p6,tag=!round_finish,limit=1] lives matches 2.. run tellraw @a[tag=!in_solo_game] [{text:"[ ",color:"gray",bold:false},{selector:"@a[tag=p6,tag=!round_finish]",color:"#C41616",bold:true},{text:" lost a life!",color:"white",bold:false},{text:" ]",color:"gray",bold:false}]
execute if entity @a[tag=p7,tag=!round_finish] unless entity @a[tag=p7,tag=spectator] if score @a[tag=p7,tag=!round_finish,limit=1] lives matches 2.. run tellraw @a[tag=!in_solo_game] [{text:"[ ",color:"gray",bold:false},{selector:"@a[tag=p7,tag=!round_finish]",color:"#C41616",bold:true},{text:" lost a life!",color:"white",bold:false},{text:" ]",color:"gray",bold:false}]
execute if entity @a[tag=p8,tag=!round_finish] unless entity @a[tag=p8,tag=spectator] if score @a[tag=p8,tag=!round_finish,limit=1] lives matches 2.. run tellraw @a[tag=!in_solo_game] [{text:"[ ",color:"gray",bold:false},{selector:"@a[tag=p8,tag=!round_finish]",color:"#C41616",bold:true},{text:" lost a life!",color:"white",bold:false},{text:" ]",color:"gray",bold:false}]

execute if entity @a[tag=p1,tag=!round_finish] unless entity @a[tag=p1,tag=spectator] if score @a[tag=p1,tag=!round_finish,limit=1] lives matches ..1 run tellraw @a[tag=!in_solo_game] [{text:"[ ",color:"gray",bold:false},{selector:"@a[tag=p1,tag=!round_finish]",color:"#C41616",bold:true},{text:" was eliminated!",color:"white",bold:false},{text:" ]",color:"gray",bold:false}]
execute if entity @a[tag=p2,tag=!round_finish] unless entity @a[tag=p2,tag=spectator] if score @a[tag=p2,tag=!round_finish,limit=1] lives matches ..1 run tellraw @a[tag=!in_solo_game] [{text:"[ ",color:"gray",bold:false},{selector:"@a[tag=p2,tag=!round_finish]",color:"#C41616",bold:true},{text:" was eliminated!",color:"white",bold:false},{text:" ]",color:"gray",bold:false}]
execute if entity @a[tag=p3,tag=!round_finish] unless entity @a[tag=p3,tag=spectator] if score @a[tag=p3,tag=!round_finish,limit=1] lives matches ..1 run tellraw @a[tag=!in_solo_game] [{text:"[ ",color:"gray",bold:false},{selector:"@a[tag=p3,tag=!round_finish]",color:"#C41616",bold:true},{text:" was eliminated!",color:"white",bold:false},{text:" ]",color:"gray",bold:false}]
execute if entity @a[tag=p4,tag=!round_finish] unless entity @a[tag=p4,tag=spectator] if score @a[tag=p4,tag=!round_finish,limit=1] lives matches ..1 run tellraw @a[tag=!in_solo_game] [{text:"[ ",color:"gray",bold:false},{selector:"@a[tag=p4,tag=!round_finish]",color:"#C41616",bold:true},{text:" was eliminated!",color:"white",bold:false},{text:" ]",color:"gray",bold:false}]
execute if entity @a[tag=p5,tag=!round_finish] unless entity @a[tag=p5,tag=spectator] if score @a[tag=p5,tag=!round_finish,limit=1] lives matches ..1 run tellraw @a[tag=!in_solo_game] [{text:"[ ",color:"gray",bold:false},{selector:"@a[tag=p5,tag=!round_finish]",color:"#C41616",bold:true},{text:" was eliminated!",color:"white",bold:false},{text:" ]",color:"gray",bold:false}]
execute if entity @a[tag=p6,tag=!round_finish] unless entity @a[tag=p6,tag=spectator] if score @a[tag=p6,tag=!round_finish,limit=1] lives matches ..1 run tellraw @a[tag=!in_solo_game] [{text:"[ ",color:"gray",bold:false},{selector:"@a[tag=p6,tag=!round_finish]",color:"#C41616",bold:true},{text:" was eliminated!",color:"white",bold:false},{text:" ]",color:"gray",bold:false}]
execute if entity @a[tag=p7,tag=!round_finish] unless entity @a[tag=p7,tag=spectator] if score @a[tag=p7,tag=!round_finish,limit=1] lives matches ..1 run tellraw @a[tag=!in_solo_game] [{text:"[ ",color:"gray",bold:false},{selector:"@a[tag=p7,tag=!round_finish]",color:"#C41616",bold:true},{text:" was eliminated!",color:"white",bold:false},{text:" ]",color:"gray",bold:false}]
execute if entity @a[tag=p8,tag=!round_finish] unless entity @a[tag=p8,tag=spectator] if score @a[tag=p8,tag=!round_finish,limit=1] lives matches ..1 run tellraw @a[tag=!in_solo_game] [{text:"[ ",color:"gray",bold:false},{selector:"@a[tag=p8,tag=!round_finish]",color:"#C41616",bold:true},{text:" was eliminated!",color:"white",bold:false},{text:" ]",color:"gray",bold:false}]

#remove lives from people (don't remove lives visually from people who are about to die cause they shouldn't actually die)
execute as @a[tag=!round_finish] unless score @s lives matches ..1 run damage @s 2 generic
execute as @a[tag=!round_finish] run scoreboard players remove @s lives 1

#make people who ran out of lives into a spectator (good actually) (and very jank thing that the entire map hinges on yeah that's a good idea do that)
execute as @a[tag=!in_solo_game] if score @s lives matches ..0 run tag @s remove alive
execute as @a[tag=!in_solo_game] if score @s lives matches ..0 run tag @s add spectator
execute as @a[tag=!in_solo_game,gamemode=!spectator] if score @s lives matches ..0 run scoreboard players remove $living_players data 1
execute as @a[tag=!in_solo_game] if score @s lives matches ..0 run gamemode spectator

#if there are 2 or more living players, start another round
execute if score $living_players data matches 2.. run title @a[tag=!in_solo_game] subtitle ""
execute if score $living_players data matches 2.. run title @a[tag=!in_solo_game] title {text:"Starting Next Round",color:"#007D28"}
execute if score $living_players data matches 2.. unless score @s lives matches ..1 run title @a[tag=!in_solo_game,tag=!round_finish] title {text:"You lost a life!",color:"#DD2800"}
execute if score $living_players data matches 2.. if score @s lives matches ..1 run title @a[tag=!in_solo_game,tag=!round_finish] title {text:"You were eliminated!",color:"#DD2800"}
execute as @a[tag=!in_solo_game,tag=!round_finish] at @s if score $living_players data matches 2.. run playsound minecraft:entity.lightning_bolt.thunder master @s ~ ~ ~

#if there is 1 living player, end the game cause somebody won
execute as @a[tag=!round_finish,tag=alive,limit=1] at @s if score $living_players data matches 1 run function mm:game/finish_game

#make people who didn't finish into a spectator (bad actually)
#execute as @a[tag=!round_finish] run tag @s remove alive
#execute as @a[tag=!round_finish] run tag @s add spectator
#execute as @a[tag=!round_finish] run gamemode spectator

#this one's good though
tag @a[tag=!in_solo_game] remove round_finish

#if there are 2 or more living players, start another round
execute if score $living_players data matches 2.. run schedule function mm:game/pre_start_round 3s