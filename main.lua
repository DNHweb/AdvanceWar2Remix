--
-- This file is part of Advance War 2 Remix Edition.
--
-- Advance War 2 Remix Edition is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- Advance War 2 Remix Edition is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with Advance War 2 Remix Edition.  If not, see <http://www.gnu.org/licenses/>.
--

--- Game states library initialization.
-- 
gameState = require "hump.gamestate"
local                   intro = {}
local                   menu = {}
local                   game = {}
--- AnAL librairy.
-- Hummm, anal...
require "AnAL.AnAL"


--------------------------------------------------------------------------------
--                          Introduction                                      --
--------------------------------------------------------------------------------



--- Initialize the introduction state.
-- Called once before entering the state (e.g. love.load).
function                intro:init()
    self.background = love.graphics.newImage("img/intro.png")
    self.logo = love.graphics.newImage("img/intro_logo.png")
    self.font = love.graphics.newFont("font/Impacted.ttf", 42)
    self.music = love.audio.newSource("sound/intro.mp3")
    self.music:setVolume(0.15)
    self.music:rewind()
end


--- Set the introduction state.
-- Called when entering the state.
function                intro:enter()
    love.graphics.setFont(self.font)
    love.audio.play(self.music)
end


--- Draw on the screen. Called every frame.
-- (e.g. love.draw)
function                intro:draw()
    love.graphics.draw(self.background, 0, 0)
    love.graphics.draw(self.logo, 100, 20)
    love.graphics.setColor(78, 99, 151, 150)
    love.graphics.rectangle("fill", 290, 300, 240, 48)
    love.graphics.reset()
    love.graphics.print("Press a key !", 300, 300)
end


--- Triggered when a key is pressed.
-- @param key The key pressed on the keyboard.
function                intro:keypressed(key)
    if key then
        gameState.switch(menu)
    end
end


--- Unset the introduction state.
-- Called when leaving a state.
function                intro:leave()
    love.graphics.reset()
    love.audio.stop(self.music)
end


--------------------------------------------------------------------------------
--                              Menu                                          --
--------------------------------------------------------------------------------



function                menu:init()
    self.background = love.graphics.newImage("img/menu2.png")
    self.anim = newAnimation(self.background, 800, 480, 0.3, 0)
    self.music = love.audio.newSource("sound/menu.mp3")
    self.music:setVolume(0.15)
    self.music:rewind()
end


--- Set the menuduction state.
-- Called when entering the state.
function                menu:enter()
    love.audio.play(self.music)
end



function                menu:update(dt)
    self.anim:update(dt)
end



--- Draw on the screen. Called every frame.
-- (e.g. love.draw)
function                menu:draw()
    self.anim:draw(0, 0)
end


--- Triggered when a key is pressed.
-- @param key The key pressed on the keyboard.
function                menu:keypressed(key)
    -- TODO : up and down
end


--- Unset the menuduction state.
-- Called when leaving a state.
function                menu:leave()
    love.graphics.reset()
    love.audio.stop(self.music)
end


--------------------------------------------------------------------------------
--                              Love                                          --
--------------------------------------------------------------------------------

function                love.load()
    gameState.registerEvents()
    gameState.switch(intro)
end