---
tags:
  - lecture-slide
  - uni
course: Droner
lecture: null
date: 2025-09-17
---

#### GNSS
**GPGGA**$,123519,4807.038,\text{N},01131.000,\text{E},1,08,0.9,545.4,\text{M},46.9,\text{M},,47$
Talker ID (GN: GNSS, GP: GPS, GL: GLONASS…)

Different NMEA Message Types contain different types of GNSS information
• **RMC**: 2D Position, Date/Time, Speed, Heading
• **GGA**: 3D Position(Lat/Lon), Time, Fix Quality, DOP, DGPS status
• **GSA**: Active Satellites
• **GSV**: Satellites in view, Azimuth, Elevation, SNR
• **GST**: Estimated accuracy

| Felt                    | Værdi            | Beskrivelse                      |
| ----------------------- | ---------------- | -------------------------------- |
| UTC tid                 | 111413.10        | 11:14:13.10                      |
| Latitude                | 5521.86821701 N  | 55°21.8682' N                    |
| Longitude               | 01025.88428094 E | 10°25.8843' E                    |
| Fix kvalitet            | 4                | 4 = RTK fix (meget præcis)       |
| Satellitter             | 06               | Antal satellitter brugt (6 stk.) |
| HDOP                    | 10.2             | Horizontal dilution of precision |
| Højde over MSL          | 15.219 m         | Meter over middelhavn            |
| Geoid separation        | 44.043 m         | Højde over ellipsoiden           |
| DGPS data alder         | 1.1 s            | Sekunder                         |
| Ref. station + cheksum. | 0185*44          | Reference station ID + checksum  |

