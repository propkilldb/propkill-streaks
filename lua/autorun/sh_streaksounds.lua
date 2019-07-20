streaks = {}
	streaks[1] = {text = "got First Blood!", sound = "killstreaks/announcer_1stblood_01.wav"}
	streaks[4] = {text = "is on a Killing Spree!", sound = "killstreaks/announcer_kill_spree_01.wav"}
	streaks[6] = {text = "is Dominating!", sound = "killstreaks/announcer_kill_dominate_01.wav"}
	streaks[8] = {text = "is on a Mega Kill!", sound = "killstreaks/announcer_kill_mega_01.wav"}
	streaks[10] = {text = "is Unstoppable!", sound = "killstreaks/announcer_kill_unstop_01.wav"}
	streaks[12] = {text = "is Wicked Sick!", sound = "killstreaks/announcer_kill_wicked_01.wav"}
	streaks[14] = {text = "is on a Monster Kill!", sound = "killstreaks/announcer_kill_monster_01.wav"}
	streaks[16] = {text = "is Godlike!", sound = "killstreaks/announcer_kill_godlike_01.wav"}
	streaks[17] = {text = "is Beyond Godlike!", sound = "killstreaks/announcer_kill_holy_01.wav"}

hook.Add("Initialize", "PK_InitializeStreakSounds2", function()
	for k,v in pairs(streaks) do
		util.PrecacheSound(v.sound)
		if SERVER then
			resource.AddFile(v.sound)
			print("Adding resource: " .. v.sound)
		end
	end
end)