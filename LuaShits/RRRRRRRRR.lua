function onCreatePost() 
    makeLuaText("typeText", "Song Type: Extras", 500, 30, 10)
    setTextAlignment("typeText", "left")
    addLuaText("typeText")

        makeLuaText("creatorText", "Created by FabloxYT & Kings Raja 2", 500, 30, 50)
        setTextAlignment("creatorText", "left")
        addLuaText("creatorText")

        makeLuaText("songText", "Raging", 500, 30, 30)
        setTextAlignment("songText", "left")
        addLuaText("songText")

    if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
        setProperty('typeText.y', 640)
        setProperty('creatorText.y', 680)
        setProperty('songText.y', 660)
    end
end

function onUpdate(elapsed)
    if curStep == 20 then
        started = true
    end
songPos = getSongPosition()
local currentBeat = (songPos/5000)*(curBpm/60)
doTweenX('backgrounds/rageback2', 'backgrounds/rageback2.scale', 0 - 50*math.sin((currentBeat+1*0.1)*math.pi), 6)
doTweenY('backgrounds/rageback2', 'backgrounds/rageback2.scale', 0 - 31*math.sin((currentBeat+1*1)*math.pi), 6)

end