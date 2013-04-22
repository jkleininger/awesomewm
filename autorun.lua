autorun = true
autorunApps = 
{ 
   "run_once xfce4-power-manager",
   "run_once synaptiks",
   "xcompmgr -cF &",
   "nitrogen --restore &",
}
if autorun then
   for app = 1, #autorunApps do
       awful.util.spawn(autorunApps[app])
   end
end
