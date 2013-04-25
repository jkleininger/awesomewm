awful = require("awful")
awful.rules = require("awful.rules")
require("awful.autofocus")
beautiful = require("beautiful")

wibox = require("wibox")

require("debian.menu")

require("errorhandler")
require("autorun")

mytheme       = "zenburn"

userhome      = os.getenv("HOME")
modkey        = "Mod4"
terminal      = "xterm"
editor        = "nano"
editor_cmd    = terminal .. " -e " .. editor
geditor       = "kate"
browser       = "luakit"
fm            = "thunar"
locker        = userhome .. "/.config/awesome/scripts/lockit"

beautiful.init("/home/user/.config/awesome/" .. mytheme .. "/theme.lua")

layouts =
{
    awful.layout.suit.tile,
    awful.layout.suit.max,
    awful.layout.suit.max.fullscreen,
    awful.layout.suit.tile.top,
    awful.layout.suit.floating,
}

require("tags")
require("menu")
require("bar")
require("mouse")
require("keys")
require("rules")
require("signal")
