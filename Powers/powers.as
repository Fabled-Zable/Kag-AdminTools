

void onInit(CBlob@ this)
{
	IPower[] powers;
	this.set("powerlist",@powers);
	IPower@ activePower;
	this.set("activepower",activePower);
	
}

void onTick(CBlob@ this)
{
	IPower@ activePower;
	this.get("activepower", activePower);
	if(activePower !is null)
	{
		activePower.onTick();
	}
}

void onTick(CSprite@ this)
{
	IPower@ activePower;
	this.get("activepower", activePower);
	if(activePower !is null)
	{
		activePower.onSprite();
	}
}

void onRender(CSprite@ this)
{
	IPower@ activePower;
	this.get("activepower", activePower);
	if(activePower !is null)
	{
		activePower.onRender();
	}
}