--We should be running in the safe application runtime--
include "Display"
local disp = Display.create()
disp.attach(Application)
disp.setColor(Color3.new(1,1,1))
local titl = disp.create("Title")
titl.setName("Main Menu")
include "Thread"
include "HTTP"
local ghapi = "https://api.github.com/repos/ds84182/rdsosapps/contents/%s"
local loadThread = Thread.create(function()
	local dir = HTTP.JSONDecode(HTTP.GetAsync(ghapi:format(""),true))
	--TODO: Do stuff here--
end, "LoadThread")
loadThread.attach(Application) --Application is the application that is running (the menu)
loadThread.start()
