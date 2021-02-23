void onInit(CRules@ this)
{
	this.AddScript("NuHubLogic.as");
}

void onBlobCreated(CRules@ this, CBlob@ blob)
{
	blob.AddScript("ExtraBlobCommands.as");
}