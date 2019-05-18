keyboard = libs.keyboard;


-- Documentation
-- http://www.unifiedremote.com/api

-- Keyboard Library
-- http://www.unifiedremote.com/api/libs/keyboard
--<button.*ontap=

presser = function(key, secondKey)
	if (secondKey == nil) then
		return function()
			keyboard.stroke(key);
		end
	end
	return function()
		keyboard.stroke(key, secondKey);
	end
end

map = function(action, key, secondKey)
	actions[action] = presser(key, secondKey);
end

--Movement
map("sw", "num1");
map("s", "num2");
map("se", "num3");
map("w", "num4");
map("wait", "num5");
map("e", "num6");
map("nw", "num7");
map("n", "num8");
map("ne", "num9");

map("up", "shift", "oem_comma");
map("explore", "num0");
map("down", "shift", "oem_period");

--Attack
map("asw", "ctrl", "num1");
map("as", "ctrl", "num2");
map("ase", "ctrl", "num3");
map("aw", "ctrl", "num4");
map("ae", "ctrl", "num6");
map("anw", "ctrl", "up");
map("an", "ctrl", "num8");
map("ane", "ctrl", "num9");

map("aup", "ctrl", "kpsubtract");
map("adown", "ctrl", "kpadd");

--Actions
map("use", "space");
map("talk", "c");
map("look", "l");
map("get", "g");
map("interact", "ctrl", "space");
map("open", "o");
map("ability", "a");
map("target", "ctrl", "t");
map("fire", "f");
map("reload", "r");
map("throw", "t");
map("walk", "w");
map("wait20", "kpdecimal");
map("wait100", "ctrl", "kpdecimal");
map("heal", "oem_3");
map("morning", "ctrl", "oem_3");

--Status
map("inventory", "i");
map("equipment", "e");
map("skills", "p");
map("character", "x");
map("quests", "q");
map("factions", "shift", "f");
map("tinkering", "k");
map("journal", "j");
map("message", "ctrl", "m");


--System
map("sidebar", "kpdivide");
map("sidebarmode", "kpmultiply");
map("help", "f1");
map("load", "f9");
map("save", "f5");
map("escape", "esc");

map("upkey", "up");
map("leftkey", "left");
map("enter", "enter");
map("rightkey", "right");
map("downkey", "down");
