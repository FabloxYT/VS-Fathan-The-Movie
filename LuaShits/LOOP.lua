function onCreatePost() 
    makeLuaText("typeText", "Song Type: Story Songs", 500, 30, 10)
    setTextAlignment("typeText", "left")
    addLuaText("typeText")

        makeLuaText("creatorText", "Created by KingsRaja2", 500, 30, 50)
        setTextAlignment("creatorText", "left")
        addLuaText("creatorText")

        makeLuaText("songText", "Timeout", 500, 30, 30)
        setTextAlignment("songText", "left")
        addLuaText("songText")

    if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
        setProperty('typeText.y', 640)
        setProperty('creatorText.y', 680)
        setProperty('songText.y', 660)
    end
end