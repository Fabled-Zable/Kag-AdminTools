# Kag-AdminTools
## What is this?
A set of useful tools for admins to use *or play with*.

## **<span style="color:red">IMPORTANT!</span>**
Add all scripts under the ``Gamemode`` directory to gamemode.cfg in whatever your main mod is. If you don't do this then you may be missing some features. The admin classes should still work though. <span style="color:yellow">Warning: doing this will also add ``NuHubLogic.as`` to the rules with the use of the AddScript function. This is done to make the install process easier.</span>

## Extra Blob Commands
### Add Script Sync 💻
Description: Adds the target script to both server and client.
#### Example:
This adds <span>spikes.as<span> to a player named bob.
```AngelScript
/rcon CBlob@ b = getPlayerByUsername('bob').getBlob(); CBitStream p; p.write_string('spikes.as'); b.SendCommand(b.getCommandID('AddScriptSync'),p);
```
<span style="color:red">**Warning!** This will cause the blob to error if you provide a non-existent script name so be careful.</span>

### Set Position 🗺
Description: Sets the position of the blob to the param provided.
#### Example:
This teleports bob to his cursor.

```AngelScript
/rcon CBlob@ b = getPlayerByUsername('bob').getBlob(); CBitStream p; p.write_Vec2f(b.getAimPos()); b.SendCommand(b.getCommandID('SetPosition'),p);
```

### Set Velocity 🎿
Description: Sets the velocity of the blob to the param provided.

#### Example:
This makes bob jump very high.

```AngelScript
/rcon CBlob@ b = getPlayerByUsername('bob').getBlob(); CBitStream p; p.write_Vec2f(Vec2f(0,-16)); b.SendCommand(b.getCommandID('SetVelocity'),p);
```
### Set Gravity 🌑
Description: Sets the gravity scale of the blob to the param provided.

#### Example:
This makes bob have 0 gravity.
```AngelScript
/rcon CBlob@ b = getPlayerByUsername('bob').getBlob(); CBitStream p; p.write_f32(0); b.SendCommand(b.getCommandID('SetGravity'),p); 
```
## Need help?
You can contact me on discord @Zable#2593. I am in many of the King Arthur's Gold discord servers but if you have trouble finding me there you can always friend me and send me a DM.