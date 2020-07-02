sky=Color.new(40,255,255)
yellow=Color.new(255,255,0)
green=Color.new(0,255,0)

px=60
py=20
pv=0
pa=-1
count=0
cd=0

g1x=240
g1y=170

g2x=480
g2y=60

function die()
dofile("INDEX.LUA")
end

while true do
pad =Controls.read()
screen:clear()
screen:fillRect(0,0,480,272,sky)

if pad:cross() then
if cd < 0 then
pv=10
cd=20
end
end
cd=cd-1

count=count+1

if count%3==0 then
pv=pa+pv
py = py-pv

g1x= g1x - 2
g2x= g2x - 2

if g1x < 0 then 
g1y=math.random(60,212)
g1x=480
end

if g2x < 0 then
g2y=math.random(60,212)
g2x=480
end

cx=70
cy=py+10

if g1x < 80 and g1x > 20 then
if not (cy > g1y - 40 and cy < g1y + 40) then
die()
end
end

if g2x < 80 and g2x > 20 then
if not (cy > g2y - 40 and cy < g2y + 40 ) then
die()
end
end
end

if py > 272 then
die()
end

screen:fillRect(px,py,20,20,yellow)

screen:fillRect(g1x,0,40,g1y-40,green)
screen:fillRect(g1x,g1y+40,40,272-g1y-40,green)

screen:fillRect(g2x,0,40,g2y-40,green)
screen:fillRect(g2x,g2y+40,40,272-g2y-40,green)

screen.flip()
screen.waitVblankStart()

end






