function onCreatePost() 
    makeLuaText("songText", "Unbehavioured", 500, 30, 50)
    setTextAlignment("songText", "left")
    addLuaText("songText")

    makeLuaText("creatorText", "Created by Kings Raja 2 & GREYISSUS", 500, 30, 30)
    setTextAlignment("creatorText", "left")
    addLuaText("creatorText")

    makeLuaText("typeText", "Song Type: Extras", 500, 30, 10)
    setTextAlignment("typeText", "left")
    addLuaText("typeText")

    if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
        setProperty('songText.y', 660)
        setProperty('typeText.y', 640)
        setProperty('creatorText.y', 680)
    end
end

function onUpdate(elapsed)
    if curStep == 20 then
        started = true
    end
songPos = getSongPosition()
local currentBeat = (songPos/5000)*(curBpm/60)
doTweenX('backgrounds/behaviorhouse2', 'backgrounds/behaviorhouse2.scale', 0 - 50*math.sin((currentBeat+1*0.1)*math.pi), 6)
doTweenY('backgrounds/behaviorhouse2', 'backgrounds/behaviorhouse2.scale', 0 - 31*math.sin((currentBeat+1*1)*math.pi), 6)

end