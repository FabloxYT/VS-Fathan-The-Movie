function onCreatePost() 
    makeLuaText("songText", "Interception", 500, 30, 50)
    setTextAlignment("songText", "left")
    addLuaText("songText")

    makeLuaText("creatorText", "Created by GREYISSUS & Jazz", 500, 30, 30)
    setTextAlignment("creatorText", "left")
    addLuaText("creatorText")

    makeLuaText("typeText", "Song Type: Story Songs", 500, 30, 10)
    setTextAlignment("typeText", "left")
    addLuaText("typeText")

    if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
        setProperty('songText.y', 660)
        setProperty('typeText.y', 640)
        setProperty('creatorText.y', 680)
    end
end

local allowCountdown = false
function onStartCountdown()
	if not allowCountdown and isStoryMode and not seenCutscene then --Block the first countdown
		startVideo('week1/1');
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end