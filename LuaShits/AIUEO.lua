function onCreatePost() 
    makeLuaText("typeText", "Song Type: Covers", 500, 30, 10)
    setTextAlignment("typeText", "left")
    addLuaText("typeText")

    makeLuaText("songText", "Accalorent", 500, 30, 30)
    setTextAlignment("songText", "left")
    addLuaText("songText")

    makeLuaText("originalText", "Original From Online VS", 500, 30, 70)
    setTextAlignment("originalText", "left")
    addLuaText("originalText")

    makeLuaText("creatorText", "Created by Retrogamerizzat", 500, 30, 50)
    setTextAlignment("creatorText", "left")
    addLuaText("creatorText")

    if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
        setProperty('typeText.y', 640)
        setProperty('songText.y', 660)
        setProperty('creatorText.y', 680)
        setProperty('originalText.y', 700)
    end
end

function onUpdate(elapsed)
    if curStep == 20 then
        started = true
    end
songPos = getSongPosition()
local currentBeat = (songPos/5000)*(curBpm/60)
doTweenX('backgrounds/accalorent2', 'backgrounds/accalorent2.scale', 0 - 50*math.sin((currentBeat+1*0.1)*math.pi), 6)
doTweenY('backgrounds/accalorent 2', 'backgrounds/accalorent2.scale', 0 - 31*math.sin((currentBeat+1*1)*math.pi), 6)

end