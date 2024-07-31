execute store result score $ready_players data run team list ready
execute unless score $ready_players data matches 8.. run tag @s remove spectator
execute unless score $ready_players data matches 8.. run team join ready
execute unless score $ready_players data matches 8.. run tellraw @s [{"text":"[ ","color":"gray","bold":false},{"text":"You joined team ","color":"white","bold":false},{"text":"ready.","color":"dark_green","bold":true},{"text":" ]","color":"gray","bold":false}]
execute if score $ready_players data matches 8.. run tellraw @s [{"text":"[ ","color":"gray","bold":false},{"text":"The player limit has been reached.","color":"#C41616","bold":false},{"text":" ]","color":"gray","bold":false}]
