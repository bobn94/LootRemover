!!!!THIS ADDON IS STILL A WORK IN PROGRESS!!!!

if you wan't to add/remove items from the auto-remove list: 
1. Open LootRemover.lua
2. Go to line six
3a. To add something, add a new line and increase numOfEntries so that the file looks something like this:


	ignoredLoot[0] = "ff9d9d9d" --Removes any gray items from your bags

	ignoredLoot[1] = "Chilled Meat" --Removes any Chilled Meat from your bags

	ignoredLoot[2] = "Drakkari Offerings"

	ignoredLoot[3] = "NAME-OF-YOUR-ITEM-HERE"

	numOfEntries = 3 --this number should allways be the same as number of items in the list -1


3b. To remove something, remove one of the lines and decrease numOfEntries so that the file looks something like this:


	ignoredLoot[0] = "ff9d9d9d" --Removes any gray items from your bags

	ignoredLoot[1] = "Chilled Meat" --Removes any Chilled Meat from your bags

	numOfEntries = 1 --this number should allways be the same as number of items in the list -1