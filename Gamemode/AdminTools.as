void onInit(CRules@ this)
{
	
}

void onBlobCreated(CRules@ this, CBlob@ blob)
{
	blob.AddScript("ExtraBlobCommands.as");
}