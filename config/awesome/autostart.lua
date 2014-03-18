-- {{{ Spaw processes
local M = {}
function M.run()
	local r = require("runonce")
	r.run("xcompmgr 2>&1 > /tmp/xcomp.log")
	r.run("/home/andreas/.kde/Autostart/ssh-add.sh")
--	r.run("wicd-gtk --tray --no-animate")
	r.run("xfce4-power-manager")
	r.run("kwalletmanager")
	r.run("kmix")
end

return M
-- }}}
