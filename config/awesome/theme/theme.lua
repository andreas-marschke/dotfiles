---------------------------
-- Default awesome theme --
---------------------------

theme = {}

theme.font          = "terminus 8"

theme.bg_normal     = "#2E2E2E55"
theme.bg_focus      = "#11111155"
theme.bg_urgent     = "#B33D3D55"
theme.bg_minimize   = "#03030355"

theme.fg_normal     = "#aaaaaaaa"
theme.fg_focus      = "#ffffff"
theme.fg_urgent     = "#ff0000ff"
theme.fg_minimize   = "#ff3333ff"

theme.border_width  = "1"
theme.border_normal = "#00000000"
theme.border_focus  = "#aaaaaaaa"
theme.border_marked = "#93939300"

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- [taglist|tasklist]_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- Example:
--theme.taglist_bg_focus = "#ff0000"

local path = "/home/andreas/.config/awesome/theme"

-- Display the taglist squares
theme.taglist_squares_sel   = path .. "/taglist/squarefw.png"
theme.taglist_squares_unsel = path .. "/taglist/squarew.png"

theme.tasklist_floating_icon = path .. "/tasklist/floatingw.png"

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
--theme.menu_submenu_icon = path .. "/submenu.png"
--theme.menu_height = "15"
--theme.menu_width  = "100"

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"

-- Define the image to load
theme.titlebar_close_button_normal = path .. "/titlebar/close_normal.png"
theme.titlebar_close_button_focus  = path .. "/titlebar/close_focus.png"

theme.titlebar_ontop_button_normal_inactive = path .. "/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive  = path .. "/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = path .. "/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active  = path .. "/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = path .. "/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive  = path .. "/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = path .. "/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active  = path .. "/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = path .. "/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive  = path .. "/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = path .. "/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active  = path .. "/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = path .. "/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = path .. "/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active = path .. "/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active  = path .. "/titlebar/maximized_focus_active.png"

-- You can use your own command to set your wallpaper
theme.wallpaper_cmd = { "awsetbg /home/andreas/.background" }

-- You can use your own layout icons like this:
theme.layout_fairh = path .. "/layouts/fairhw.png"
theme.layout_fairv = path .. "/layouts/fairvw.png"
theme.layout_floating  = path .. "/layouts/floatingw.png"
theme.layout_magnifier = path .. "/layouts/magnifierw.png"
theme.layout_max = path .. "/layouts/maxw.png"
theme.layout_fullscreen = path .. "/layouts/fullscreenw.png"
theme.layout_tilebottom = path .. "/layouts/tilebottomw.png"
theme.layout_tileleft   = path .. "/layouts/tileleftw.png"
theme.layout_tile = path .. "/layouts/tilew.png"
theme.layout_tiletop = path .. "/layouts/tiletopw.png"
theme.layout_spiral  = path .. "/layouts/spiralw.png"
theme.layout_dwindle = path .. "/layouts/dwindlew.png"

theme.awesome_icon = "/usr/share/awesome/icons/awesome16.png"

return theme
-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:encoding=utf-8:textwidth=80
