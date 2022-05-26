function onCreatePost() 
    makeLuaText("typeText", "Song Type: Covers", 500, 30, 10)
    setTextAlignment("typeText", "left")
    addLuaText("typeText")

        makeLuaText("creatorText", "Created by FabloxYT", 500, 30, 50)
        setTextAlignment("creatorText", "left")
        addLuaText("creatorText")

        makeLuaText("songText", "Suffer-Stress", 500, 30, 30)
        setTextAlignment("songText", "left")
        addLuaText("songText")

        makeLuaText("originalText", "Original Song From Chaos Nightmare", 500, 30, 70)
        setTextAlignment("originalText", "left")
        addLuaText("originalText")

    if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
        setProperty('typeText.y', 640)
        setProperty('originalText.y', 700)
        setProperty('creatorText.y', 680)
        setProperty('songText.y', 660)
    end
end