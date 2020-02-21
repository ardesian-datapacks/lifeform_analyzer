tag @s add lfa.customTradeSetup

execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Duration: 20, Tags: ["RandLFA", "pass"]}
execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Duration: 20, Tags: ["RandLFA"]}
execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Duration: 20, Tags: ["RandLFA"]}
tag @e[tag=RandLFA,sort=random,limit=1] add selected

execute if entity @e[tag=RandLFA,tag=pass,tag=selected] run data modify entity @s Offers.Recipes append value {sell: {id: "minecraft:compass", Count: 1b, tag: { display:{Name:"{\"text\":\"Life Form Analyzer\",\"italic\":\"false\"}", Lore: ["\"An ancient artifact used to detect impending danger.\""]}, Enchantments: [{id: unbreaking, lvl: 1}], LFA: 1b, HideFlags: 1b }}, buy: {id: "minecraft:emerald", Count: 42b}}

kill @e[tag=RandLFA]

# /data merge entity @e[type=minecraft:wandering_trader,limit=1,sort=nearest] {NoAI: true}
# /summon minecraft:wandering_trader ~ ~ ~ {NoAI:true}
# /tag @e[type=minecraft:wandering_trader,limit=1,sort=nearest] remove lfa.customTradeSetup
