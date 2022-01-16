Citizen.CreateThread( function()
updatePath = "Roleplay-Utilities/ScriptsDirectory-FiveM/blob/main/RealismRPFramework/RRPF_core" -- your git user/repo path
resourceName = "RealismRPFramework ("..GetCurrentResourceName()..")" -- the resource name

function checkVersion(err,responseText, headers)
	curVersion = LoadResourceFile(GetCurrentResourceName(), "version-dev") -- make sure the "version" file actually exists in your resource root!

	if curVersion ~= responseText and tonumber(curVersion) < tonumber(responseText) then
		print("𝕆𝕌𝕋𝔻𝔸𝕋𝔼𝔻")
		print("\n"..resourceName.." is outdated, should be:\n"..responseText.."is:\n"..curVersion.."\nplease update it from https://github.com"..updatePath.."")
		print("𝕆𝕌𝕋𝔻𝔸𝕋𝔼𝔻")
	elseif tonumber(curVersion) > tonumber(responseText) then
		print("You somehow skipped a few versions of "..resourceName.." or the git went offline, if it's still online i advise you to update ( or downgrade? )")
	else
		print("\n"..resourceName.." is up to date, have fun!")
	end
end

PerformHttpRequest("https://raw.githubusercontent.com"..updatePath.."Roleplay-Utilities/ScriptsDirectory-FiveM/blob/main/RealismRPFramework/RRPF_core", checkVersion, "GET")
end)
