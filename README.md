### Quex Corporations
---
#### Projects
*  Explorer
   ```lua
   loadstring(game:HttpGet("https://raw.githubusercontent.com/URylen/Quex/master/explorer/source.lua"))()
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
   ```
   Commands
	Chat the commands in game for it to work.

   say:[ message/last/fps/token ]
   spam:[ spam-msg-count/stop ]:[ message/last/fps/token ]
   swis:[ bot/all/stop ]:[ user/me ]
   lyrics:[ lyric-name <lionhearted> ]

   tp:[ bot/all ]:[ user/me/random ]
   line:[ user/me/random ]:[ per-row/army ]:[ spacing-x ]:[ spacing-y ]
   fling:[ bot/all ]:[ user/me/random ]:[ fling-method <1, 2> ]:[ fling-time ]
   roam:[ bot/all/stop ]:[ random-jumps ]:[ move-size ]:[ wait-min ]:[ wait-max ]
   follow:[ bot/all/stop ]:[ user/me/random ]
   path:[ bot/all/stop ]:[ user/me/random ]
   speed:[ bot/all ]:[ walk-speed ]
   jump:[ bot/all ]:[ jump-power ]
   lookat:[ bot/all/stop ]:[ user/me/random/closest ]

   reset:[ bot/all ]
   restart:[ bot/all ]
   disable:[ bot/all ]
   leave:[ bot/all ]
   ```
#### Specific game
*  Factory Simulator (Not ready yet)
*  Burger Bay (Not ready yet)
