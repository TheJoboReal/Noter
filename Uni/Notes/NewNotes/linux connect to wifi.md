---
tags:
  - lecture-slide
  - uni
course: Linux Querks
lecture: null
date: 2025-10-14
---
>[!TIP] See [link](https://www.linuxfordevices.com/tutorials/ubuntu/connect-wifi-terminal-command-line)

#### Connecting to wifi via the terminal
Run the following to display all wifi networks:
```bash
nmcli dev wifi list
```

To connect to a network, write the following, replacing SSID with the name of the chosen network:

```bash
sudo nmcli --ask dev wifi connect "SSID"
```

Check if you are connected:
```bash
ping 8.8.8.8
```

#### Previously Saved Network Connections
Run the following to display the saved connections:
```bash
nmcli con show
```

##### Disconnect from Current connection
Run the following to disconnect from a network:
```bash
nmcli con down "SSID or UUID"
```

##### Connect to Saved Connection
Run the following to disconnect from a network:
```bash
nmcli con up "SSID or UUID"
```
