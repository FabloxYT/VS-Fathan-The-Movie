function onCreatePost() 
    makeLuaText("typeText", "Song Type: Story Songs", 500, 30, 10)
    setTextAlignment("typeText", "left")
    addLuaText("typeText")

        makeLuaText("creatorText", "Created by FabloxYT", 500, 30, 50)
        setTextAlignment("creatorText", "left")
        addLuaText("creatorText")

        makeLuaText("songText", "Friendzoned", 500, 30, 30)
        setTextAlignment("songText", "left")
        addLuaText("songText")

    if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
        setProperty('typeText.y', 640)
        setProperty('creatorText.y', 680)
        setProperty('songText.y', 660)
    end
end

function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.05 then
        setProperty('health', health- 0.01);
    end
end

local allowCountdown = false
function onStartCountdown()
	if not allowCountdown and isStoryMode and not seenCutscene then --Block the first countdown
		startVideo('week1/5');
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end

function onEndSong()
       if not allowEnd then
            startVideo('week1/6');
            allowEnd = true;
            return Function_Stop;
       end
       return Function_Continue;
end