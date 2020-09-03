execute at @s run execute if entity @e[type=#lifeform_analyzer:hostile,distance=..20] run title @s actionbar [{"selector": "@e[type=#lifeform_analyzer:hostile,distance=..20,limit=1,sort=nearest]", "color":"dark_red"}, {"text": " detected nearby!", "color": "white"}]
execute at @s run execute unless entity @e[type=#lifeform_analyzer:hostile,distance=..20] run title @s actionbar [{"text": "No danger detected.", "color": "white"}]

execute at @s run execute if entity @e[type=#lifeform_analyzer:passive,nbt=!{AngerTime: 0},distance=..20] run title @s actionbar [{"selector": "@e[type=#lifeform_analyzer:passive,nbt=!{AngerTime: 0},distance=..20,limit=1,sort=nearest]", "color":"red"}, {"text": " detected nearby!", "color": "white"}]
