### Quex Corporations
---
#### Projects
*  Explorer
   ```lua
   loadstring(game:HttpGet("https://raw.githubusercontent.com/URylen/Quex/master/explorer/source.lua"))();
   ```
*  Aimbot
   ```lua
   local Genv = (getgenv or function()return _G end)();
   Genv["quex/aimbot"] = {};
   Genv = Genv["quex/aimbot"];

   Genv["options/aimbot/part"] = "Head";

   Genv["options/highlight"] = true;
   Genv["options/highlight/show_distance"] = true;
   Genv["options/highlight/show_health"] = false;
   Genv["options/highlight/show_displayname"] = true;

   Genv["options/aimbot/free_for_all"] = true;
   Genv["options/aimbot/use_localtransparencymodifier_method"] = false;
   Genv["options/aimbot/use_closest_method"] = false;
   Genv["options/aimbot/check_for_raycast"] = false;

   Genv["options/keybind/toggle_aimbot"] = "f";
   Genv["options/keybind/toggle_highlights"] = "q";
   Genv["options/keybind/disable_aimbot"] = "b";

   loadstring(game:HttpGet("https://raw.githubusercontent.com/URylen/Quex/master/aimbot/source.lua"))();
   ```
*  Bot Raider (Not ready yet)
#### Specific game
*  Factory Simulator (Not ready yet)
*  Burger Bay (Not ready yet)
