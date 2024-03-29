# We can now modify what we want about the item here. Its 'Slot' is set to 0.
execute as @s[predicate=lifeform_analyzer:in_overworld] run data modify storage lifeform_analyzer:calibrate_slot Item merge value {tag: {LodestoneDimension: "minecraft:overworld"}}
execute as @s[predicate=lifeform_analyzer:in_the_nether] run data modify storage lifeform_analyzer:calibrate_slot Item merge value {tag: {LodestoneDimension: "minecraft:the_nether"}}
execute as @s[predicate=lifeform_analyzer:in_the_end] run data modify storage lifeform_analyzer:calibrate_slot Item merge value {tag: {LodestoneDimension: "minecraft:the_end"}}
#
# data modify storage lifeform_analyzer:calibrate_slot Item.tag.LodestoneDimension set from entity @s Dimension
data modify storage lifeform_analyzer:calibrate_slot Item.tag.LodestoneTracked set value 1b
data modify storage lifeform_analyzer:calibrate_slot Item.tag.LodestonePos.X set from entity @e[predicate=lifeform_analyzer:is_hostile,sort=nearest,limit=1] Pos[0]
data modify storage lifeform_analyzer:calibrate_slot Item.tag.LodestonePos.Y set from entity @e[predicate=lifeform_analyzer:is_hostile,sort=nearest,limit=1] Pos[1]
data modify storage lifeform_analyzer:calibrate_slot Item.tag.LodestonePos.Z set from entity @e[predicate=lifeform_analyzer:is_hostile,sort=nearest,limit=1] Pos[2]

data modify storage lifeform_analyzer:calibrate_slot Item.Slot set value 0b

# Third, we copy the storage item to the shulker box. Because 'Slot' is 0, the item will be in the first slot.
execute in minecraft:overworld run data modify block 0 0 0 Items append from storage lifeform_analyzer:calibrate_slot Item


# execute as @s at @s run summon armor_stand ~ ~ ~ {ShowArms:1b}
# execute as @s at @s run item replace entity @e[type=armor_stand,sort=nearest,limit=1] weapon.mainhand from entity @s weapon.mainhand
# execute as @s at @s run item replace entity @e[type=armor_stand,sort=nearest,limit=1] weapon.offhand from entity @s weapon.offhand
# execute as @s at @s run item replace entity @s weapon.mainhand from entity @e[type=armor_stand,sort=nearest,limit=1] weapon.offhand
# execute as @s at @s run item replace entity @s weapon.offhand from entity @e[type=armor_stand,sort=nearest,limit=1] weapon.mainhand
# execute as @s at @s as @e[type=armor_stand,sort=nearest,limit=1] run kill @s
