_G.RNGModifier = _G.RNGModifier or {}
if not RNGModifier then
	return
end
local _Curret_Heist = "arm_und"
RNGModifier._data = RNGModifier._data or {}
RNGModifier._data[_Curret_Heist] = RNGModifier._data[_Curret_Heist] or {}

MenuCallbackHandler.RNGModifier_arm_und_rand_truck_amount = function(self, item)
	RNGModifier:SafeSetData(item:value(), _Curret_Heist, "_rand_truck_amount")
	RNGModifier:Save()
end
MenuHelper:AddMultipleChoice({
	id = "RNGModifier_arm_und_rand_truck_amount",
	title = "RNGModifier_arm_rand_truck_amount_title",
	desc = "RNGModifier_arm_rand_truck_amount_desc",
	callback = "RNGModifier_arm_und_rand_truck_amount",
	items = {
		"RNGModifier_Default_One_Item",
		"RNGModifier_arm_rand_truck_amount_1",
		"RNGModifier_arm_rand_truck_amount_2",
		"RNGModifier_arm_rand_truck_amount_3",
		"RNGModifier_arm_rand_truck_amount_4"
	},
	value = RNGModifier:SafeGetData("arm_und", "_rand_truck_amount"),
	menu_id = "RNGModifier_arm_und_Options_Menu"
})
