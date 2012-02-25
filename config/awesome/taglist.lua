local M
M = {}
M.buttons =awful.util.table.join(
           awful.button({ }, 1, awful.tag.viewonly),
           awful.button({ modkey }, 1, awful.client.movetotag),
           awful.button({ }, 3, awful.tag.viewtoggle),
           awful.button({ modkey }, 3, awful.client.toggletag),
           awful.button({ }, 4, awful.tag.viewnext),
           awful.button({ }, 5, awful.tag.viewprev)
)
return M

