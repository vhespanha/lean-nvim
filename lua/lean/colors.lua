local M = {}

-- Base colors
M.black = "#0f0f0f"
M.white = "#ffffff"
M.gray = {
  "#D6D6D6",
  "#A3A3A3",
  "#8A8A8A",
  "#707070",
  "#575757",
  "#3E3E3E",
  "#272727",
  "#242424",
  "#0f0f0f",
  "#0B0B0B",
}

-- Primary colors
M.blue = {
  "#cae8ff",
  "#a5d6ff",
  "#79c0ff",
  "#58a6ff",
  "#388bfd",
  "#1f6feb",
  "#1158c7",
  "#0d419d",
  "#0c2d6b",
  "#051d4d",
}

M.green = {
  "#aff5b4",
  "#7ee787",
  "#56d364",
  "#3fb950",
  "#2ea043",
  "#238636",
  "#196c2e",
  "#0f5323",
  "#033a16",
  "#04260f",
}

M.yellow = {
  "#f8e3a1",
  "#f2cc60",
  "#e3b341",
  "#d29922",
  "#bb8009",
  "#9e6a03",
  "#845306",
  "#693e00",
  "#4b2900",
  "#341a00",
}

M.orange = {
  "#ffdfb6",
  "#ffc680",
  "#ffa657",
  "#f0883e",
  "#db6d28",
  "#bd561d",
  "#9b4215",
  "#762d0a",
  "#5a1e02",
  "#3d1300",
}

M.red = {
  "#ffdcd7",
  "#ffc1ba",
  "#ffa198",
  "#ff7b72",
  "#f85149",
  "#da3633",
  "#b62324",
  "#8e1519",
  "#67060c",
  "#490202",
}

M.purple = {
  "#eddeff",
  "#e2c5ff",
  "#d2a8ff",
  "#bc8cff",
  "#a371f7",
  "#8957e5",
  "#6e40c9",
  "#553098",
  "#3c1e70",
  "#271052",
}

M.pink = {
  "#ffdaec",
  "#ffbedd",
  "#ff9bce",
  "#f778ba",
  "#db61a2",
  "#bf4b8a",
  "#9e3670",
  "#7d2457",
  "#5e103e",
  "#42062a",
}

M.coral = {
  "#ffddd2",
  "#ffc2b2",
  "#ffa28b",
  "#f78166",
  "#ea6045",
  "#cf462d",
  "#ac3220",
  "#872012",
  "#640d04",
  "#460701",
}

-- Semantic colors
M.fg = {
  default = "#e6edf3",
  muted = "#7d8590",
  subtle = "#6a737d",
  on_emphasis = M.white,
}

M.bg = {
  default = M.black,
  inset = M.black,
  subtle = "#131313",
}

M.border = {
  default = M.gray[7],
  muted = M.gray[7],
  subtle = M.gray[7] .. "66", -- 40% opacity
}

M.accent = {
  fg = M.purple[5],
  emphasis = M.purple[6],
  muted = M.purple[5] .. "66", -- 40% opacity
  subtle = M.purple[5] .. "1a", -- 10% opacity
}

M.success = {
  fg = M.green[4],
  emphasis = M.green[6],
  muted = M.green[4] .. "66", -- 40% opacity
  subtle = M.green[4] .. "26", -- 15% opacity
}

M.attention = {
  fg = M.yellow[4],
  emphasis = M.yellow[6],
  muted = M.yellow[4] .. "66", -- 40% opacity
  subtle = M.yellow[4] .. "26", -- 15% opacity
}

M.severe = {
  fg = M.orange[5],
  emphasis = M.orange[6],
  muted = M.orange[5] .. "66", -- 40% opacity
  subtle = M.orange[5] .. "1a", -- 10% opacity
}

M.danger = {
  fg = M.red[5],
  emphasis = M.red[6],
  muted = M.red[5] .. "66", -- 40% opacity
  subtle = M.red[5] .. "1a", -- 10% opacity
}

-- Syntax colors
M.syntax = {
  comment = "#6a737d",
  constant = "#79b8ff",
  entity = "#b392f0",
  keyword = "#f97583",
  string = "#9ecbff",
  variable = "#ffab70",
  bracket = M.fg.default,
  tag = "#85e89d",
  regex = "#9ecbff",
}

-- Diagnostic colors
M.diag = {
  error = M.danger.fg,
  warn = M.attention.fg,
  info = M.accent.fg,
  hint = M.fg.muted,
}

-- Git colors
M.git = {
  add = M.success.fg,
  removed = M.danger.fg,
  changed = M.attention.fg,
  conflict = M.severe.fg,
  ignored = M.fg.subtle,
}

-- Special colors
M.special = {
  cyan = {
    base = "#76e3ea",
    bright = "#b3f0ff",
  },
  rainbow = {
    violet = "#a371f7",
    pink = "#db61a2",
    blue = "#58a6ff",
  },
}

return M
