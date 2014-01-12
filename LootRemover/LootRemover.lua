local EventFrame = CreateFrame("Frame")
local numOfEntries = 0
local ignoredLoot = {}
local i = 0

ignoredLoot[0] = "ff9d9d9d" --Removes any gray items from your bags
ignoredLoot[1] = "Chilled Meat" --Removes any Chilled Meat from your bags
ignoredLoot[2] = "Drakkari Offerings"
ignoredLoot[3] = "Raptor Egg"
ignoredLoot[4] = "Raptor Hide"
ignoredLoot[5] = "Raptor Flesh"
ignoredLoot[6] = "Large Fang"
ignoredLoot[7] = "Gorilla Fang"
ignoredLoot[8] = "Coarse Gorilla Hair"
ignoredLoot[9] = "Tiger Meat"
ignoredLoot[10] = "Bear Flank"
numOfEntries = 10

EventFrame:RegisterEvent("LOOT_CLOSED")
EventFrame:SetScript("OnEvent", function(self,event,...) 
	for i = 0, numOfEntries do
		for bag = 0, 4 do for slot = 1, GetContainerNumSlots(bag) do local name = GetContainerItemLink(bag,slot) if name and string.find(name,ignoredLoot[i]) then PickupContainerItem(bag,slot) DeleteCursorItem() end end end
	end
end
)
