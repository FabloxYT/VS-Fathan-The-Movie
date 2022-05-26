function onCreatePost() 
    makeLuaText("typeText", "Song Type: Covers", 500, 30, 10)
    setTextAlignment("typeText", "left")
    addLuaText("typeText")

        makeLuaText("originalText", "Original Song From Indie Cross", 500, 30, 70)
        setTextAlignment("originalText", "left")
        addLuaText("originalText")

        makeLuaText("creatorText", "Created by FabloxYT & GibranTheGamerCool", 500, 30, 50)
        setTextAlignment("creatorText", "left")
        addLuaText("creatorText")

        makeLuaText("songText", "Knock-In", 500, 30, 30)
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
        setProperty('health', health- 0.05);
    end
end

function onCreate()
    makeLuaSprite('cupSPRITES', 'musician/KnockIn', 500, 400)
    addLuaSprite('cupSPRITES')
    doTweenAlpha('TweenCup', 'cupSPRITES', 0, 0.1, linear)
    setObjectCamera('cupSPRITES', 'hud')
end

function onStepHit()
    if curStep == 3 then
        doTweenAlpha('Tweenc2', 'cupSPRITES', 1, 0.3, linear)
    end
    if curStep == 16 then
        doTweenAlpha('Tweenc2', 'cupSPRITES', 0, 1, linear)
        doTweenX('CUPGAYtween', 'cupSPRITES', 2000, 1, linear)
    end
end