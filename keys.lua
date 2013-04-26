globalkeys = awful.util.table.join(
    awful.key({ modkey,           }, "b",      function () awful.util.spawn(browser)                end),
    awful.key({ modkey,           }, "e",      function () awful.util.spawn(fm)                     end),
    awful.key({ modkey,           }, "l",      function () awful.util.spawn(locker)                 end),
    awful.key({ modkey,           }, "w",      function () mymainmenu:show({keygrabber=true})       end),
    awful.key({ modkey,           }, "Return", function () awful.util.spawn(terminal)               end),
    awful.key({ modkey,           }, "t",      function () awful.util.spawn(tptoggle)               end),

    awful.key({                   }, "#122",   function () awful.util.spawn("amixer set Master 2-") end),
    awful.key({                   }, "#123",   function () awful.util.spawn("amixer set Master 2+") end),
    --    awful.key({ }, "#121", function () volume("mute") end),

    awful.key({ modkey,           }, "Tab",
        function ()
            awful.client.focus.byidx( 1)
            if client.focus then client.focus:raise() end
        end),
    awful.key({ modkey, "Shift"   }, "Tab", function () awful.client.swap.byidx(  1)    end),

    awful.key({ modkey, "Control" }, "r", awesome.restart),
    awful.key({ modkey, "Shift"   }, "q", awesome.quit),

    awful.key({ modkey,           }, "space", function () awful.layout.inc(layouts,  1) end),

    awful.key({ modkey },            "r",     function () mypromptbox[mouse.screen]:run() end)
)

clientkeys = awful.util.table.join(
    awful.key({ modkey,           }, "f",      function (c) c.fullscreen = not c.fullscreen  end),
    awful.key({ modkey, "Shift"   }, "c",      function (c) c:kill()                         end),
    awful.key({ modkey,           }, "m",
        function (c)
            c.maximized_horizontal = not c.maximized_horizontal
            c.maximized_vertical   = not c.maximized_vertical
        end)
)

keynumber = 0
for s = 1, screen.count() do
   keynumber = math.min(9, math.max(#tags[s], keynumber));
end

for i = 1, keynumber do
    globalkeys = awful.util.table.join(globalkeys,
        awful.key({ modkey }, "#" .. i + 9,
                  function ()
                        local screen = mouse.screen
                        if tags[screen][i] then
                            awful.tag.viewonly(tags[screen][i])
                        end
                  end),
        awful.key({ modkey, "Shift" }, "#" .. i + 9,
                  function ()
                      if client.focus and tags[client.focus.screen][i] then
                          awful.client.movetotag(tags[client.focus.screen][i])
                      end
                  end))
end

clientbuttons = awful.util.table.join(
    awful.button({ }, 1, function (c) client.focus = c; c:raise() end),
    awful.button({ modkey }, 1, awful.mouse.client.move),
    awful.button({ modkey }, 3, awful.mouse.client.resize))

root.keys(globalkeys)
