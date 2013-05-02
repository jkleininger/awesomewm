awful = require("awful")
awful.rules = require("awful.rules")
require("awful.autofocus")
beautiful = require("beautiful")

wibox = require("wibox")

require("errorhandler")
require("autorun")

mytheme       = "zenburn"

userhome      = os.getenv("HOME")
scripts       = userhome .. "/.config/awesome/scripts/"
modkey        = "Mod4"
terminal      = "xterm"
editor        = "vim"
editor_cmd    = terminal .. " -e " .. editor
geditor       = "gvim"
browser       = "firefox"
fm            = "thunar"
locker        = userhome .. "/.config/awesome/scripts/lockit"
tptoggle      = scripts .. "tp-toggle"

beautiful.init("/home/user/.config/awesome/" .. mytheme .. "/theme.lua")

layouts =
{
    awful.layout.suit.tile,
    awful.layout.suit.max,
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
