local wezterm = require 'wezterm'

local M = {}

-- Theme
M.color_scheme = 'Dracula'


-- Font Settings
M.font = wezterm.font 'SF Mono'
M.font_size = 16


-- Window
--	Size
M.initial_cols = 80
M.initial_rows = 30

--	Transparent
M.window_background_opacity = 0.85
M.macos_window_background_blur = 20

-- 	Bar
M.window_decorations = "RESIZE"
M.hide_tab_bar_if_only_one_tab = true


return M
