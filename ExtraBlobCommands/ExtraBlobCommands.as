
void onTick(CBlob@ this)
{
	this.addCommandID("AddScriptSync");
	this.addCommandID("SetPosition");
	this.addCommandID("SetVelocity");
	this.addCommandID("SetGravity");
	this.getCurrentScript().tickFrequency = 0;
}

void onCommand(CBlob@ this, u8 cmd, CBitStream@ params)
{
	if (cmd == this.getCommandID("AddScriptSync"))
	{
		string scriptname;
		if(params.saferead_string(scriptname))
		{
			this.AddScript(scriptname);
		}
		else 
		{
			error("Error reading string param for script name. Forgot to add?");
		}
	} 
	else if (cmd == this.getCommandID("SetPosition"))
	{
		Vec2f position;
		if(params.saferead_Vec2f(position))
		{
			this.setPosition(position);
		}
		else
		{
			error("Error reading Vec2f param for position. Forgot to add?");
		}
	}
	else if (cmd == this.getCommandID("SetVelocity"))
	{
		Vec2f velocity;
		if(params.saferead_Vec2f(velocity))
		{
			this.setVelocity(velocity);
		}
		else 
		{
			error("Error reading Vec2f param for velocity. Forgot to add?");
		}
	} 
	else if (cmd == this.getCommandID("SetGravity"))
	{
		f32 gravity;
		if(params.saferead_f32(gravity))
		{
			this.getShape().SetGravityScale(gravity);
		}
		else
		{
			error("Error reading Vec2f param for velocity. Forgot to add?");
		}
	}
}