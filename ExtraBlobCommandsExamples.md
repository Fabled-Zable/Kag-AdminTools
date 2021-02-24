## Extra Blob Commands
### Add Script Sync 💻
<span style="color:grey">Adds the target script to both server and client.</span>
#### Example:
<span style="color:grey">This adds <span>spikes.as<span> to a player named bob.</span>
```AngelScript
/rcon CBlob@ b = getPlayerByUsername('bob').getBlob(); CBitStream p; p.write_string('spikes.as'); b.SendCommand(b.getCommandID('AddScriptSync'),p);
```
<span style="color:red">**Warning!** This will cause the blob to error if you provide a non-existent script name so be careful.</span>

### Set Position 🗺
<span style="color:grey"> Sets the position of the blob to the param provided. </span>
#### Example:
<span style="color:grey">This teleports bob to his cursor.</span>

```AngelScript
/rcon CBlob@ b = getPlayerByUsername('bob').getBlob(); CBitStream p; p.write_Vec2f(b.getAimPos()); b.SendCommand(b.getCommandID('SetPosition'),p);
```

### Set Velocity 🎿
<span style="color:grey"> Sets the velocity of the blob to the param provided.</span>

#### Example:
<span style="color:grey">This makes bob jump very high.</span>

```AngelScript
/rcon CBlob@ b = getPlayerByUsername('bob').getBlob(); CBitStream p; p.write_Vec2f(Vec2f(0,-16)); b.SendCommand(b.getCommandID('SetVelocity'),p);
```
### Set Gravity 🌑
<span style="color:grey">Sets the gravity scale of the blob to the param provided.</span>

#### Example:
<span style="color:grey"> This makes bob have 0 gravity. </span>
```AngelScript
/rcon CBlob@ b = getPlayerByUsername('bob').getBlob(); CBitStream p; p.write_f32(0); b.SendCommand(b.getCommandID('SetGravity'),p); 
```
## Need help? 😕
You can contact me on discord @Zable#2593. I am in many of the King Arthur's Gold discord servers but if you have trouble finding me there you can always friend me and send me a DM.