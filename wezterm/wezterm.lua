-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.window_background_opacity = 0.9
-- This is where you actually apply your config choices

-- For example, changing the color scheme:
-- config.color_scheme = 'Catppuccin Frappe'
-- config.color_scheme = 'Sakura'
-- config.color_scheme = 'Sequoia Moonlight'
-- config.color_scheme = 'shades-of-purple'
-- config.color_scheme = 'Dracula'
-- config.color_scheme = 'Cyberdyne'
-- config.color_scheme = 'cyberpunk'
config.color_scheme = 'Dark Violet (base16)'
-- config.color_scheme = 'DoomOne'
-- config.color_scheme = 'Duotone Dark'
-- config.color_scheme = 'duskfox'
-- config.color_scheme = 'Ef-Deuteranopia-Dark'
-- config.color_scheme = 'iceberg-dark'
-- config.color_scheme = 'jubi'
-- config.color_scheme = 'Laser'
-- config.color_scheme = 'Lavandula'
-- config.color_scheme = 'Material Palenight (base16)'
-- config.color_scheme = 'Sequoia Moonlight'
-- config.color_scheme = 'Rosé Pine Moon (Gogh)'
-- config.color_scheme = 'Tokyo Night (Gogh)'
-- config.color_scheme = 'Tokyo Night Moon'
-- config.color_scheme = 'tokyonight'
-- config.color_scheme = 'Whimsy'
config.font = wezterm.font 'JetBrains Mono'


-- and finally, return the configuration to wezterm
return config
