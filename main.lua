
local Sound = require("sound")

function love.load()
   Sound:init("test", "sfx/player_get_coin.ogg", "static")
   Sound:init("multiple", {"sfx/player_get_coin.ogg", "sfx/player_hit.ogg", "sfx/player_jump.ogg" }, "static")
end

function love.update(dt)
   Sound:update()
   print("welp")
end

function love.draw()

end
  
function love.keypressed(key)
   if key == "a" then
      loopingSound = Sound:play("test", "sfx", 1, 0.3, true)
      loopingSound:setLooping(false)
   end

   if key == "s" then
      Sound:stop("sfx")
   end
end
