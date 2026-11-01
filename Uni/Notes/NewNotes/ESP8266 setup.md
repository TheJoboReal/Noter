---
tags:
  - lecture-slide
  - uni
course: Linux Querks
lecture: null
date: 2026-10-29
---

#### Definition
Setting up an ESP8266MOD on arduino-cli using lazyvim:
- Board: Generic ESP8266 Module.
- LED-PIN: GPIO2.
- Upload speed: 115200.
- CPU Frequency: 80Mhz or 160MHz.
- Crystal Frequency: 26Mhz or 40MHz.
- Flash Size: 4MB (FS:2MB OTA:~1019KB).
- Flash Mode: QIO.
- Flash Frequency: 40MHz.
- Reset Method: Use dtr(aka nodemcu)
- lwIP Variant: lower memory.
- VTables: FLash.
- C++ Exeptions: Disabled
- Stack Protection: Enabled. help detect stack buffer overflows, where a program accidentally writes beyond the memory allocated for a local variable.
- NONOS SDK Version: 2.2.2+100.
- MMU: 32KB cache + 32KB IRAM (balanced)


---
### lwIP

lwIP (Lightweight IP) is the networking stack used by the ESP8266 for TCP/IP communication, including Wi-Fi connections, HTTP, UDP, and sockets.

The ESP8266 has limited RAM, so the lwIP variant affects how much memory remains available for your application.

| Option                            | Description                                                                     |
| --------------------------------- | ------------------------------------------------------------------------------- |
| v2 Lower Memory                   | Recommended default. Saves RAM while retaining normal networking functionality. |
| v2 Higher Bandwidth               | Uses more RAM to improve networking throughput.                                 |
| v2 Lower Memory (no features)     | Smaller configuration with some networking features removed.                    |
| v2 Higher Bandwidth (no features) | Prioritizes throughput with fewer optional features.                            |
| v2 IPv6 Lower Memory              | Adds IPv6 support while prioritizing RAM usage.                                 |
| v2 IPv6 Higher Bandwidth          |                                                                                 |

### VTables

A virtual method table (VTable) is a C++ mechanism used to implement virtual functions and polymorphism.

The setting determines where these tables are stored.

| Option | Description                                                                       |
| ------ | --------------------------------------------------------------------------------- |
| Flash  | Stores VTables in flash memory, conserving RAM. Recommended.                      |
| Heap   | Copies or places VTables in dynamically allocated memory, consuming heap space.   |
| IRAM   | Places VTables in instruction RAM, offering faster access but using limited IRAM. |
|        |                                                                                   |

### SSL Support

This setting determines which encryption algorithms are included in your ESP8266 firmware for secure TLS/HTTPS connections.

|Option|Description|
|---|---|
|All SSL ciphers|Broadest compatibility with HTTPS servers, MQTT over TLS, and other encrypted services|
|Basic SSL ciphers|Smaller firmware footprint, but fewer supported encryption algorithms|

### MMU

The Memory Management Unit (MMU) controls how the ESP8266 allocates its limited instruction memory and cache.

|Option|Description|
|---|---|
|1. 32KB cache + 32KB IRAM|Balanced configuration. Recommended for most projects.|
|2. 16KB cache + 48KB IRAM|More instruction RAM for code that must execute from IRAM, but a smaller flash cache.|
|3. 16KB cache + 48KB IRAM and 2nd Heap|Provides additional heap capacity through shared memory, with restrictions.|
|4. 16KB cache + 32KB IRAM + 16KB 2nd Heap|Reserves additional memory for a separate heap.|
|5–6. External memory|Require specific external RAM hardware. Not suitable for a typical ESP-12F.|