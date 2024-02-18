Pack_Value = function(value, type)
  math.randomseed = math.random(type)
  ran1 = math.random(9)
  ran2 = math.random(9)
    hash_value = "f"
    for i = 1, string.len(value) do
        hash_value = hash_value ..tostring(string.byte(string.sub(value, i, i)) / 10 / type)
        print(hash_value)
        hash_value = tostring(hash_value) .. "f"
        if string.sub(value, i, i) == ran1 then hash_value = hash_value .. ran2; elseif string.sub(value, i, i) == ran2 then hash_value = hash_value .. ran1 end
    end
    hash_value = string.gsub(hash_value, "%.", "%%")
    hash_value = string.gsub(hash_value, "0", "!")
    hash_value = string.gsub(hash_value, "3", "l")
    hash_value = string.gsub(hash_value, "6", "b")
    hash_value = string.gsub(hash_value, "9", "]")
    hash_value = string.gsub(hash_value, "7", "[")
    return hash_value
end
-- Unpack Value
function UnPack_Value(text, type2)
  math.randomseed = math.random(type2)
  ran1 = math.random(9)
  ran2 = math.random(9)
    arrayind = {}
    unhash_value = ""
    numb = ""
    count= 0
    for i=1, string.len(txt) + 1 do
      if string.sub(txt, i, i) == "f" then
            arrayind[#(arrayind)+1] = i
        end
    end
    hash_value = ""
    unhash_value = ""
    for i = 1, #(arrayind)-1 do
      if arrayind[i] == ran1 then hash_value = hash_value .. ran2; elseif arrayind[i] == ran2 then hash_value = hash_value .. ran1 end
        numb = string.sub(txt, arrayind[i], arrayind[i+1])
        numb = string.gsub(numb, "%%" , ".")
        numb = string.gsub(numb, "f", "")
        numb = string.gsub(numb, "!", "0")
        numb = string.gsub(numb, "b", "6")
        numb = string.gsub(numb, "%l", "3")
        numb = string.gsub(numb, "%]", "9")
        numb = string.gsub(numb, "%[", "7")
        unhash_value = unhash_value.. string.char(math.floor(tonumber(numb)*10 * type2 + 0.5))
    end
    return unhash_value
end

txt = io.read()
print(UnPack_Value(txt, 6))
-- f1%b5f1%85f1%8llllllllllllf1%]1bbbbbbbbbb[f1%8f1%b8lllllllllllf1%]f