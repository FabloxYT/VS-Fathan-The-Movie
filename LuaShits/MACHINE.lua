local canattack = false;
local mecha = false
local attacked = false;
local idlebfthing = false
---
function onCreatePost() 
    makeLuaText("typeText", "Song Type: NIGHTMARE", 500, 30, 10)
    setTextAlignment("typeText", "left")
    addLuaText("typeText")

        makeLuaText("creatorText", "Created by Retrogamerizzat & GREYISSUS", 500, 30, 50)
        setTextAlignment("creatorText", "left")
        addLuaText("creatorText")

        makeLuaText("songText", "Yellow-Slaves", 500, 30, 30)
        setTextAlignment("songText", "left")
        addLuaText("songText")

    if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
        setProperty('typeText.y', 640)
        setProperty('creatorText.y', 680)
        setProperty('songText.y', 660)
    end
end

function opponentNoteHit(id, d, noteType, isSustainNote)
	if not lowQuality then
	cameraShake('game', 0.007, 0.1)
    cameraShake('hud', 0.007, 0.1)
	end
end