function onCreatePost() 
    makeLuaText("typeText", "Song Type: Covers", 500, 30, 10)
    setTextAlignment("typeText", "left")
    addLuaText("typeText")

        makeLuaText("originalText", "Original Song From Indie Cross", 500, 30, 70)
        setTextAlignment("originalText", "left")
        addLuaText("originalText")

        makeLuaText("creatorText", "Created by Retrogamerizzat & FabloxYT", 500, 30, 50)
        setTextAlignment("creatorText", "left")
        addLuaText("creatorText")

        makeLuaText("songText", "Sanstional", 500, 30, 30)
        setTextAlignment("songText", "left")
        addLuaText("songText")

    if getPropertyFromClass('ClientPrefs', 'downScroll') == false then
        setProperty('typeText.y', 640)
        setProperty('originalText.y', 700)
        setProperty('creatorText.y', 680)
        setProperty('songText.y', 660)
    end
end