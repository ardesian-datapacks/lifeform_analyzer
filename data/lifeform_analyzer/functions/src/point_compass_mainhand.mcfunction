# First, we copy the item to a storage.
data modify storage lifeform_analyzer:calibrate_slot Item set from entity @s SelectedItem

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

# Then, we move the shulker box item back to the player's inventory.
execute in minecraft:overworld run item replace entity @s weapon.mainhand from block 0 0 0 container.0
