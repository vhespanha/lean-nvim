local colorbuddy = require("colorbuddy")
local Group = colorbuddy.Group
local colors = colorbuddy.colors

-- Terminal colors
Group.new("terminal_color_0", colors.gray[9])
Group.new("terminal_color_8", colors.gray[5])

Group.new("terminal_color_1", colors.red[4])
Group.new("terminal_color_9", colors.red[4])

Group.new("terminal_color_2", colors.green[3])
Group.new("terminal_color_10", colors.green[3])

Group.new("terminal_color_3", colors.yellow[3])
Group.new("terminal_color_11", colors.yellow[3])

Group.new("terminal_color_4", colors.blue[3])
Group.new("terminal_color_12", colors.blue[3])

Group.new("terminal_color_5", colors.purple[4])
Group.new("terminal_color_13", colors.purple[4])

Group.new("terminal_color_6", colors.special.cyan.base)
Group.new("terminal_color_14", colors.special.cyan.bright)

Group.new("terminal_color_7", colors.gray[3])
Group.new("terminal_color_15", colors.fg.default)
