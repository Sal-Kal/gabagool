## BLUETOOTHCTL

- `power <on/off>`: Enable bluetooth controller.
- `scan <on/off>`: Scan for available bluetooth devices.
- `devices`: List available devices after scanning.
- `pair <MAC_ID>`: Used to pair to a particular device, use the mac address found while executing `devices` command.
- `connect <MAC_ID>`: Used to connect to a paired device.

## NMCLI

- `radio wifi`: Check if Wi-Fi is enabled or not.
- `radio wifi <on/off>`: Enable or disable Wi-Fi.
- `dev wifi list`: Scan existing Wi-Fi networks.
```
IN-USE  BSSID              SSID        MODE   CHAN  RATE        SIGNAL  BARS  SECURITY
        B4:A7:C6:6C:E9:43  saish_2ghz  Infra  6     130 Mbit/s  77      ▂▄▆_  WPA2
*       B4:A7:C6:6C:E9:44  saish_5ghz  Infra  36    270 Mbit/s  64      ▂▄▆_  WPA2
        02:8E:23:FF:AC:59  OnePlus 9R  Infra  1     130 Mbit/s  32      ▂▄__  WPA2 WPA3
        D8:0D:17:AD:37:FB  PRASSAD2    Infra  1     130 Mbit/s  25      ▂___  WPA2
        A8:88:1F:1A:A8:0D  ARUN        Infra  6     130 Mbit/s  22      ▂___  WPA2
        50:D4:F7:7D:0B:9F  PRASAD_EXT  Infra  11    270 Mbit/s  19      ▂___  WPA1 WPA2

```
- `dev wifi connect <SSID> --ask`: Connecting to a password protected Wi-Fi network. Adding the `--ask` flag prompts you to enter the password.
```
nmcli dev wifi connect saish_5ghz --ask
```

- `connection show`: Show existing connections.
- `dev status`: Show status of existing devices.
- `dev show <device_name>`: Show device details.
