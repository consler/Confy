confypack = function(value, type)
  math.randomseed = math.random(type)
  ran1 = math.random(9)
  ran2 = math.random(9)
    hash_value = "f"
    for i = 1, string.len(value) do
        hash_value = hash_value ..tostring(string.byte(string.sub(value, i, i)) / 10 / type)
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
print(confypack("AGE=44",1234))