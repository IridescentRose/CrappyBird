White = Color.new(255,255,255)

while true do

pad= Controls.read()
screen:clear()
screen:print(0,0,"PRESS X TO START",White)
screen:print(0,20,"PRESS O TO QUIT",White)
if pad:cross() then
dofile("game.lua")
end
if pad:circle() then
System.quit()
end

screen.flip()
screen.waitVblankStart()

end





