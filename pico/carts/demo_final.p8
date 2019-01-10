pico-8 cartridge // http://www.pico-8.com
version 16
__lua__
-- define waffle char.
w={}
w.x=64
w.y=64
w.dx=0
w.dy=0

function _update60()
 -- move left and right.
 if (btn(⬅️)) w.x-=1
 if (btn(➡️)) w.x+=1

 -- apply gravity.
 w.dy += 0.15

 -- handle jumps.
 if btnp(⬆️) then
  w.dy=-1.75
  sfx(0)
 end

 -- apply velocity.
 w.x += w.dx
 w.y += w.dy

 -- handle floor collisions.
 if (w.y>100) w.y=100
end

function _draw()
 cls(2)
 spr(1,w.x,w.y,2,2)
end
__gfx__
0000000000ffffffffffff0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000ffffffffffffff000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700ff44f44f44f44fff00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000ff4ff4ff4ff4ffff00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000ffffffffffffffff00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700ff44f44f44f44fff00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000ff4ff4ff4ff4ffff00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000ffffffffffffffff00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000ff44ffffffffffff00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000ff4fff88fff88fff00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000ffffff88fff88fff00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000ff44ff88fff88fff00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000ff4fffffffffffff00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000fffffff5fff5ffff00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000fffffff555ffff000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000ffffffffffff0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__sfx__
0002000019050210001f0501f0501f0501f050200502305024050280502d050320503f0002b00030000350003c000010000000000000000000000000000000000000000000000000000000000000000000000000
