function event_say(e)
	if(e.message:findi("Hail")) then
		e.self:Say("Hello there, " .. e.other:GetCleanName() .. ". There seem to be some strange problems with the boats in this area. The Academy of Arcane Sciences has sent a small team of us to investigate them. In the meantime, I can transport you to my companion there if you wish to [travel to Timorous Deep].");
	elseif(e.message:findi("timorous deep")) then
		e.self:CastSpell(2292,e.other:GetID()); -- Spell: Portal to Timorous (elf camp)
		e.self:Say("Off you go!");
	end
end
