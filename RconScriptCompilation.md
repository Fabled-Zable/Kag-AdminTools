# Rcon Script Compilation
## This is a collection of Rcon scripts that might be useful or just fun to use
<br><br>
## Delete all blobs:
### <span style="color:grey"> This deletes all blobs of a certain name. This is helpful for clearing a bunch of blobs that are lagging the server *all of which you probably spawned* </span>
```AngelScript
/rcon CBlob@ b; getBlobsByName("[blob you want dead]",@b); for(int i = 0; i < b.size(); i++){b[i].server_Die();}
```

## Kill everyone:
### <span style="color:grey">You probably aren't a great person if you're using this but hey who am I to judge.</span>
```Angelscript
for(int i = 0; i < getPlayersCount(); i++){CBlob@ b = getPlayer(i).getBlob(); if(b !is null){b.server_Die();}}
```