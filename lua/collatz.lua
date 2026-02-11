-- Written by FastPlays08 on 30/12/2025

io.write("Input a starting number: ")
local num = tonumber(io.read())

local count = 0
local peak_num = num

local start = os.clock()

while num ~= 1 do
    if num % 2 == 0 then
        num = num / 2
    else
        num = num * 3 + 1
    end

    if num >= peak_num then
        peak_num = num
    end

    count = count + 1
end

local elapsed = os.clock() - start

print(string.format("Completed in %.6f seconds.", elapsed))
print(string.format("Completed after %d steps.", count))
print(string.format("Peak number was %d.", peak_num))