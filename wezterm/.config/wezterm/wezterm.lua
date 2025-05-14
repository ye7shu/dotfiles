local wezterm = require 'wezterm'

local config = wezterm.config_builder()


local appearance_config = require 'appearance'
for k, v in pairs(appearance_config) do
  config[k] = v
end


return config
