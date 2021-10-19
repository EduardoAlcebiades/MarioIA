
function sleepCode (endTime)
    emu.frameadvance()
    return os.time() > endTime
end

function wait(seconds)
    local endTime = os.time() + seconds
    repeat until sleepCode(endTime)
end

numberFile = 0

save = function ()
    numberFile = numberFile + 1
    file = tostring(numberFile);
    nameFile = '../assets/screenshots/screenshot_'..file..'.png'
    gui.savescreenshotas(nameFile)
end

while true do
    save()
    wait(0.5)
end


