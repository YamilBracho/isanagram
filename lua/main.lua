-- Returrns length of an array
function tablelength(T)
    local count = 0

    for _ in pairs(T) do
        count = count + 1
    end
    
    return count
end

-- Split a string according a separator as a table
function mysplit(inputstr, sep)
    if sep == nil then
        sep = "%s"
    end

    local t = {}
    for str in string.gmatch(inputstr, "([^" .. sep .. "]+)") do
        table.insert(t, str)
    end
    
    return t
end

function isAnagram(str)

    --  Empty string
    if string.len(str) == 0 then
        return false
    end

    -- Split string
    local tokens = mysplit(str, "=")
    if table.getn(tokens) ~= 2 then
        return false
    end

    -- tokens should be of the same length
    local len1 = string.len(tokens[1])
    if len1 ~= string.len(tokens[2]) then
        return false
    end

    -- Compare each character
    for i = 1, string.len(tokens[1]) do
        local ch = string.sub(str, i, i)
        if not string.find(tokens[2], ch) then
            return false
        end
    end

    return true
end

arr = {"123=320", "dog=god", "cat=tac", "pool=loop", "cool=loco", "jira=raji", "bees=bese", "kilo=loki", "", " = ",
       "asfgfasgasfsagdf==", "01234567890123456789012345678901234567890=09876543210987654321098765432109876543210",
       "abc=bca"}

for i, str in ipairs(arr) do
    if isAnagram(str) then
        print(string.format("%s is an anagram.", str))
    else
        print(string.format("%s is not an anagram.", str))
    end
end