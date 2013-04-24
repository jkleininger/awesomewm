awful = require("awful")
awful.rules = require("awful.rules")
require("awful.autofocus")
beautiful = require("beautiful")

wibox = require("wibox")

require("debian.menu")

require("errorhandler")
require("autorun")

mytheme       = "zenburn"

modkey        = "Mod4"
terminal      = "xterm"
editor        = "nano"
editor_cmd    = terminal .. " -e " .. editor
geditor       = "kate"
browser       = "/usr/share/iron/iron"
fm            = "dolphin"

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
