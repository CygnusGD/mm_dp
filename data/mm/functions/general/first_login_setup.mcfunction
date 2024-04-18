tag @s add i_have_logged_in_at_least_once

tp @s 0.50 64.00 0.50 0.00 0.00
function mm:lobby/reset_gm
give @a written_book{display:{Name:'{"text":"Mummies & Memory Instructions","color":"gold","italic":false}'},title:"Mummies & Memory Instructions",author:"CygnusGD",pages:['[{"text":"Mummies & Memory","bold":true},{"text":"\\n\\nAt the start of each round, you will be shown a 5x5 pattern of blocks. After it disappears try to be the first to complete it! The last person to finish is eliminated. If no players finish the pattern in time, nobody will be eliminated and a new round will start.","bold":false}]','[{"text":"Tools","bold":true},{"text":"\\n\\nChisel: The chisel can break pattern blocks if you make a mistake. They return directly to your inventory.\\n\\nHand Drill: The hand drill can rotate certain patterns. These include triangle, hook, squiggle, and corner.","bold":false}]','[{"text":"Other","bold":true},{"text":"\\n\\nMummies & Memory supports 2-8 players, though additional players may spectate.\\n\\nIf you wish to end the game early, type \\"/trigger end_game\\" in chat to vote to end the game. All players must vote for the game to be ended.","bold":false}]']} 1

#gamerules
gamerule doDaylightCycle false
time set noon
gamerule commandBlockOutput false
gamerule logAdminCommands false
gamerule sendCommandFeedback false
gamerule doFireTick false
gamerule randomTickSpeed 0
gamerule doMobSpawning false