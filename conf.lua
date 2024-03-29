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

function                    love.conf(t)
    t.title = "Advance Wars 2 Remix Edition"
    t.author = "DNH Web Services"
    t.url = nil                 -- The website of the game (string)
    t.identity = "aw2re"        -- The name of the save directory (string)
    t.version = "0.8.0"
    t.console = false
    t.release = false
    t.screen.width = 800        -- The window width (number)
    t.screen.height = 480       -- The window height (number)
    t.screen.fullscreen = false -- Enable fullscreen (boolean)
    t.screen.vsync = true       -- Enable vertical sync (boolean)
    t.screen.fsaa = 0           -- The number of FSAA-buffers (number)
    t.modules.joystick = false  -- Enable the joystick module (boolean)
    t.modules.audio = true      -- Enable the audio module (boolean)
    t.modules.keyboard = true   -- Enable the keyboard module (boolean)
    t.modules.event = true      -- Enable the event module (boolean)
    t.modules.image = true      -- Enable the image module (boolean)
    t.modules.graphics = true   -- Enable the graphics module (boolean)
    t.modules.timer = true      -- Enable the timer module (boolean)
    t.modules.mouse = true      -- Enable the mouse module (boolean)
    t.modules.sound = true      -- Enable the sound module (boolean)
    t.modules.physics = false   -- Enable the physics module (boolean)
end