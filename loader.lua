-- Table mapping the specific game IDs to your GitHub scripts
local scriptHub = {
    [126884695634066] = "https://raw.githubusercontent.com/Reversed1337/Testing-124/refs/heads/main/pet%20finder.lua",  -- Grow a Garden
    [97598239454123] = "https://raw.githubusercontent.com/Reversed1337/Testing-123/refs/heads/main/zeta%20hub.lua" -- Grow a Garden 2
}

local targetURL = scriptHub[game.PlaceId]

if targetURL then
    -- Safely fetch and run the code
    local fetchSuccess, fetchedCode = pcall(game.HttpGet, game, targetURL)
    if fetchSuccess then
        loadstring(fetchedCode)()
    else
        warn("Loader Error: Failed to fetch the script from GitHub.")
    end
else
    warn("Loader Error: This game (Place ID: " .. game.PlaceId .. ") is not supported.")
end
