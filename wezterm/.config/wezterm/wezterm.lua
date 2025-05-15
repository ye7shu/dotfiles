-- ██╗    ██╗███████╗███████╗████████╗███████╗██████╗ ███╗   ███╗
-- ██║    ██║██╔════╝╚══███╔╝╚══██╔══╝██╔════╝██╔══██╗████╗ ████║
-- ██║ █╗ ██║█████╗    ███╔╝    ██║   █████╗  ██████╔╝██╔████╔██║
-- ██║███╗██║██╔══╝   ███╔╝     ██║   ██╔══╝  ██╔══██╗██║╚██╔╝██║
-- ╚███╔███╔╝███████╗███████╗   ██║   ███████╗██║  ██║██║ ╚═╝ ██║
--  ╚══╝╚══╝ ╚══════╝╚══════╝   ╚═╝   ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝

local wezterm = require 'wezterm'
local act = wezterm.action


local config = wezterm.config_builder()

-- ╭────────────────────────────────────────────────────────────╮
-- │                            Color                           │
-- ╰────────────────────────────────────────────────────────────╯
config.color_scheme = 'Catppuccin Macchiato'

-- ╭────────────────────────────────────────────────────────────╮
-- │                            Font                            │
-- ╰────────────────────────────────────────────────────────────╯
config.font = wezterm.font 'SF Mono'
config.font_size = 16


-- ╭────────────────────────────────────────────────────────────╮
-- │                        Window Size                         │
-- ╰────────────────────────────────────────────────────────────╯
config.initial_cols = 80
config.initial_rows = 30
config.adjust_window_size_when_changing_font_size = false


-- ╭────────────────────────────────────────────────────────────╮
-- │                       Window Appearance                    │
-- ╰────────────────────────────────────────────────────────────╯
config.text_background_opacity = 0.85
config.window_background_opacity = 0.85
config.macos_window_background_blur = 20
config.window_decorations = "RESIZE"
config.window_padding = { left = 40, right = 40, top = 40, bottom = 40 }

-- ╭────────────────────────────────────────────────────────────╮
-- │                        Tab Bar                             │
-- ╰────────────────────────────────────────────────────────────╯
config.enable_tab_bar = true
config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = false
config.show_new_tab_button_in_tab_bar = false

-- ╭────────────────────────────────────────────────────────────╮
-- │                        Keybinds                            │
-- ╰────────────────────────────────────────────────────────────╯

config.keys = {
    {
        key = 'LeftArrow',
        mods = 'OPT',
        action = act.SendKey { key = 'b', mods = 'ALT' },
    },
    {
        key = 'RightArrow',
        mods = 'OPT',
        action = act.SendKey { key = 'f', mods = 'ALT' },
    },
    {
        key = 'Backspace',
        mods = 'OPT',
        action = act.SendKey { key = 'Backspace', mods = 'ALT' },
    },
}

return config
