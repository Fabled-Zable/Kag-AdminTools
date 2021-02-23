#include "powerscommon.as"

void onInit(CBlob@ this)
{
	IPower@[] powers;
	powers.push_back(@CForce(this));
	this.set("powerlist",@powers);
	this.set("activepower",@powers[0]);
	
}

void onTick(CBlob@ this)
{
	IPower@ activePower;
	this.get("activepower", @activePower);
	if(activePower !is null)
	{
		activePower.onTick();
	}
}

void onTick(CSprite@ this)
{
	CBlob@ blob = this.getBlob();
	IPower@ activePower;
	blob.get("activepower", @activePower);
	if(activePower !is null)
	{
		activePower.onSprite();
	}
}

void onRender(CSprite@ this)
{
	CBlob@ blob = this.getBlob();
	IPower@ activePower;
	blob.get("activepower", @activePower);
	if(activePower !is null)
	{
		activePower.onRender();
	}
}