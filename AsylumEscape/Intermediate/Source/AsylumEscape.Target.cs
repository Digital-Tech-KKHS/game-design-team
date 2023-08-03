using UnrealBuildTool;

public class AsylumEscapeTarget : TargetRules
{
	public AsylumEscapeTarget(TargetInfo Target) : base(Target)
	{
		DefaultBuildSettings = BuildSettingsVersion.V2;
		Type = TargetType.Game;
		ExtraModuleNames.Add("AsylumEscape");
	}
}
