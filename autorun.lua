autorun = true
autorunApps = 
{ 
   "xfce4-power-manager",
   "xcompmgr -cF &",
   "nitrogen --restore &",
}
if autorun then
   for app = 1, #autorunApps do
       awful.util.spawn(autorunApps[app])
   end
end
