function confyunpack(txt, type2)
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