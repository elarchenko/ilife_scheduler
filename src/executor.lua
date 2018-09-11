local M
do
  local send = function()
    tmr.unregister(0);
    local exec = require("ir")
    exec.nec(2, 0x52a3e788)
  end
  
  local command = function()
    send()
    tmr.alarm(0, 4000, 1, send)
  end
  
  local sch = function(tm, tm_cron)
    if (tm ~= " ") then
      rtctime.set(tm, 0)
    end
    cron.reset()
    if (tm_cron ~= " ") then
      cron.schedule(tm_cron, command)
    end
  end  
  
  M = {
    sch = sch,
  }
end
return M