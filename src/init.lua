print ( "Waiting ...")
tmr.register (0, 5000, tmr.ALARM_SINGLE, function (t) tmr.unregister (0); print("Starting...") dofile("wifi.lua") dofile("web.lua") end)
tmr.start (0)