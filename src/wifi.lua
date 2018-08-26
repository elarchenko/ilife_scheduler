--WiFi Settup
print("Wifi initialization...")
local cfg={}
cfg.ssid="iLife"
cfg.pwd="iLifeV55"
cfg.auth=wifi.WPA2_PSK
cfg.save=true
wifi.ap.config(cfg)
wifi.setmode(wifi.SOFTAP)
print("Wifi configured")