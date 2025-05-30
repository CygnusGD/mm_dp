scoreboard players set $ready_players data 0
execute store result score $ready_players data run team list ready
execute if score $ready_players data matches ..1 run tellraw @s [{text:"[ ",color:"gray",bold:false},{text:"Not enough players to start.",color:"#C41616",bold:false},{text:" ]",color:"gray",bold:false}]
execute if score $ready_players data matches 2.. run tellraw @a [{text:"[ ",color:"gray",bold:false},{selector:"@s",bold:true},{text:" is starting the game. ",color:"white",bold:false},{text:"[Click to Cancel]",color:"#C41616",bold:true,hover_event:{action:"show_text","value":[{text:"Click me!"}]},click_event:{action:"run_command",command:"/trigger cancel_start"}},{text:" ]",color:"gray",bold:false}]
execute if score $ready_players data matches 2.. run function mm:lobby/start/10