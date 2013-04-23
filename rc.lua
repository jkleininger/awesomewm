require("awful")
require("awful.autofocus")
require("awful.rules")
require("beautiful")
--require("naughty")
--require("vicious")

require("debian.menu")

require("errorhandler")
require("autorun")

mytheme       = "zenburn"

modkey        = "Mod4"
terminal      = "konsole"
editor        = "nano"
editor_cmd    = terminal .. " -e " .. editor
geditor       = "kate"
browser       = "/usr/share/iron/iron"
fm            = "dolphin"

beautiful.init("/home/user/.config/awesome/" .. mytheme .. "/theme.lua")

layouts =
{
    awful.layout.suit.floating,
    awful.layout.suit.tile,
    awful.layout.suit.max,
    awful.layout.suit.max.fullscreen,
}

require("tags")
require("menu")
require("bar")
require("mouse")
require("keys")
require("rules")
require("signal")
