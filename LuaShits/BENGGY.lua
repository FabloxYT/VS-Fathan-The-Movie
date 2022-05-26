function onCreatePost() 
    makeLuaText("typeText", "Song Type: Covers", 500, 30, 10)
    setTextAlignment("typeText", "left")
    addLuaText("typeText")

        makeLuaText("originalText", "Original Song From Indie Cross", 500, 30, 70)
        setTextAlignment("originalText", "left")
        addLuaText("originalText")

        makeLuaText("creatorText", "Created by TetanicMitten26 & FabloxYT", 500, 30, 50)
        setTextAlignment("creatorText", "left")
        addLuaText("creatorText")

        makeLuaText("songText", "Nuggetmare-Ron", 500, 30, 30)
        setTextAlignment("songText", "left")
        addLuaText("songText")

    if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
        setProperty('typeText.y', 640)
        setProperty('originalText.y', 700)
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

function onUpdate(elapsed)
    if curStep == 20 then
        started = true
    end
songPos = getSongPosition()
local currentBeat = (songPos/5000)*(curBpm/60)
doTweenX('backgrounds/bendy2', 'backgrounds/bendy2.scale', 0 - 50*math.sin((currentBeat+1*0.1)*math.pi), 6)
doTweenY('backgrounds/bendy2', 'backgrounds/bendy2.scale', 0 - 31*math.sin((currentBeat+1*1)*math.pi), 6)

end