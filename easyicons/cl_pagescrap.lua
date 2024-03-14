

surface.CreateFont("ixIconsSmallNew", {
    font = "nsicons",
    size = 22,
    extended = true,
    weight = 500
})

surface.CreateFont("ixIconsMediumNew", {
    font = "nsicons",
    extended = true,
    size = 28,
    weight = 500
})

surface.CreateFont("ixIconsBigNew", {
    font = "nsicons",
    extended = true,
    size = 48,
    weight = 500
})

local function ScrapPage()
    local d = deferred.new()

    http.Fetch('https://brynparker.github.io/civicnetworks/', function(resp)
        local headpos = select(2, resp:find('<div class="row">'))
        local body = resp:sub(headpos)
        local scrapped = {}

        for str in body:gmatch('(icon-%S+);</i>') do
            local whitespaced = str:gsub('">', ' ')
            local nulled = whitespaced:gsub('&#', '0')

            local splitted = nulled:Split(' ')
            scrapped[splitted[1]] = splitted[2]
        end

        d:resolve(scrapped)
    end)

    return d
end

ScrapPage():next(function(scrapped)
    IX_ICON_FONT = scrapped
end)




