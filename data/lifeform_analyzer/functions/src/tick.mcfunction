execute as @a[predicate=lifeform_analyzer:holding_lfa] run function lifeform_analyzer:src/check_location

execute as @e[type=minecraft:wandering_trader,tag=!lfa.customTradeSetup] run function lifeform_analyzer:src/add_trading
