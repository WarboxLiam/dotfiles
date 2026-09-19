-- Catppuccin Mocha palette.
-- Each colour is available as a full `rgb()` string and as a bare hex string
-- (the `*Alpha` variants) so an alpha channel can be appended, e.g.
--   mocha.blueAlpha .. "99"  ->  "89b4fa99"

local M = {}

local palette = {
    rosewater = "f5e0dc",
    flamingo  = "f2cdcd",
    pink      = "f5c2e7",
    mauve     = "cba6f7",
    red       = "f38ba8",
    maroon    = "eba0ac",
    peach     = "fab387",
    yellow    = "f9e2af",
    green     = "a6e3a1",
    teal      = "94e2d5",
    sky       = "89dceb",
    sapphire  = "74c7ec",
    blue      = "89b4fa",
    lavender  = "b4befe",
    text      = "cdd6f4",
    subtext1  = "bac2de",
    subtext0  = "a6adc8",
    overlay2  = "9399b2",
    overlay1  = "7f849c",
    overlay0  = "6c7086",
    surface2  = "585b70",
    surface1  = "45475a",
    surface0  = "313244",
    base      = "1e1e2e",
    mantle    = "181825",
    crust     = "11111b",
}

for name, hex in pairs(palette) do
    M[name] = "rgb(" .. hex .. ")"
    M[name .. "Alpha"] = hex
end

-- Helper: mocha.rgba("blue", "99") -> "rgba(89b4fa99)"
function M.rgba(name, alpha)
    return "rgba(" .. palette[name] .. alpha .. ")"
end

return M
