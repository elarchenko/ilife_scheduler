response="HTTP/1.0 200 OK\r\nServer: NodeMCU\r\nContent-Type: application/json\r\n\r\n"
print("Post processing")
local rsp = nil
if POST['data'] ~= nil then
  local data = sjson.decode(POST['data'])
  local exec = require("executor")
  exec.sch(data.tm, data.cron)
  rsp = '{"result": "OK"}'
end
local cmd = POST['command']
if cmd ~= nil then
  if cmd == "test" then
    local exec = require("ir")
    exec.nec(2, 0x02aa44bb)
    rsp = '{"result": "OK"}'
  end
end
if rsp == nil then
  rsp = '{"result": "Error"}'
end
response = response..rsp
return response