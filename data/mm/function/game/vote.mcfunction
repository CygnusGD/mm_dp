scoreboard players add $votes data 1
scoreboard players reset @s end_game
tellraw @a[tag=!in_solo_game] [{text:"[ ",color:"gray",bold:false},{selector:"@s",color:"#C41616",bold:true},{text:" has voted to end the game! (",color:"#C41616",bold:false},{score:{name:"$votes",objective:"data"},color:"#C41616"},{text:"/",color:"#C41616"},{score:{name:"$eligible_voters",objective:"data"},color:"#C41616"},{text:")",color:"#C41616"},{text:" ]",color:"gray",bold:false}]
execute if score $votes data >= $eligible_voters data run function mm:game/end_game_early