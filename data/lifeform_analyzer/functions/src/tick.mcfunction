execute as @a[predicate=lifeform_analyzer:mainhand_lfa] run function lifeform_analyzer:src/check_hostiles
execute as @a[predicate=lifeform_analyzer:offhand_lfa] run function lifeform_analyzer:src/check_hostiles

execute as @e[type=minecraft:wandering_trader,tag=!lfa.customTradeSetup] run function lifeform_analyzer:src/add_trading
