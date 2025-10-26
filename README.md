# development_behavior_packs

Minecraft Bedrock  Behavior_packs (testing)

## setup

Press Win+R to open Run.
If you are using main Minecraft releases, copy and paste the following into the Open field:
```cmd
%localappdata%\Packages\Microsoft.MinecraftUWP_8wekyb3d8bbwe\LocalState\games\com.mojang
```
Alternatively, if you are using preview Minecraft preleases, copy and paste the following into the Open field:
```cmd
%localappdata%\Packages\Microsoft.MinecraftWindowsBeta_8wekyb3d8bbwe\LocalState\games\com.mojang
```
Click OK.
```cmd
# locate
windows cmd
cd %localappdata%\Packages\Microsoft.MinecraftUWP_8wekyb3d8bbwe\LocalState\games\com.mojang
windows terminal (powershell)
cd $env:localappdata\Packages\Microsoft.MinecraftUWP_8wekyb3d8bbwe\LocalState\games\com.mojang

git clone https://github.com/josy1024/development_behavior_packs.git
git clone https://github.com/josy1024/development_resource_packs.git
```

## doku

* https://learn.microsoft.com/en-us/minecraft/creator/documents/behaviorpackfromscratch?view=minecraft-bedrock-stable

## whats changed?

* 1, 0, 10: rebalance iron, leather, strings, add netherite ingot
* 1, 0, 9: angry cow loot table (drop strings, drop dias, decrease leather)
* 1, 0, 8: changed loot table ruined portal

https://learn.microsoft.com/en-us/minecraft/creator/reference/source/vanillabehaviorpack_snippets/loot_tables/chests/ruined_portal?view=minecraft-bedrock-stable

* changed cow behaviour

/summon  forju:op_angry_cow