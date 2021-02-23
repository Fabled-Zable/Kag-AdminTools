class CPowerVars
{
	u16 thisblob;
	u16[] targets; //used for multiple targets
	string targetName; //used for targeting all blobs of a certain name

	CBlob@ getBlob()
	{
		return getBlobByNetworkID(thisblob);
	}
}

interface IPower
{
	void onTick();
	void onSprite();
	void onRender();
	CPowerVars@ getVars();
}

class CPowerBase : IPower
{
	CPowerVars@ vars;

	CPowerBase(CBlob@ blob)
	{
		CPowerVars vars;
		vars.thisblob = blob.getNetworkID();
		@this.vars = vars;
	}

	CPowerVars@ getVars()
	{
		return vars;
	}

	void onTick()
	{
		
	}
	void onSprite()
	{
		
	}
	void onRender()
	{
		
	}
}

class CForce : CPowerBase
{
	f32 strength = 20;
	f32 radius = 5*8;
	f32 falloffrate;

	CForce(CBlob@ blob)
	{
		super(blob);
	}

	void onTick() override
	{
		CBlob@ blob = vars.getBlob();

		CBlob@[] blobs;
		CMap@ m = getMap();

		vars.targetName = "pixie";
		if ((vars.targetName == "" && vars.targets.size() == 0) || vars.targetName != "")
		{
			m.getBlobsInRadius(blob.getAimPos(), radius, blobs);

			if(vars.targetName != "")
			{
				for(int i = 0; i < blobs.size(); i++)
				{
					if(blobs[i].getName() != vars.targetName)
					{
						blobs.removeAt(i);
						i--;
					}
				}
			}
		}
		else
		{
			for(int i = 0; i < vars.targets.size(); i++)
			{
				CBlob@ b = getBlobByNetworkID(vars.targets[i]);
				if(b !is null)
				{
					blobs.push_back(@b);
				}
			}
		}


		Vec2f aimpos = blob.getAimPos();

		for(int i = 0; i < blobs.size(); i++)
		{
			CBlob@ b = blobs[i];

			Vec2f bpos = b.getPosition();
			Vec2f diff = bpos - aimpos;
			f32 dist = diff.Length();
			diff.Normalize();

			b.setVelocity(b.getVelocity() + diff * (strength * (1/(dist + 1))));
		}
	}
}