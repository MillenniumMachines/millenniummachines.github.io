# Universal Electronics Box - Sourcing guide

<!-- Source: Electronics Cabinet BOM.xlsx (Universal-Electronics-Box repo) -->

Bill of materials for the Universal Electronics Box. Recommended and alternative columns reflect the published spreadsheet; add purchase links in a future update where only vendor names are listed.

## Filament

| Category | Component | Standard | QTY | Note | Recommended | Alternative 1 |
|---|---|---|---|---|---|---|
| Filament | Primary Color ABS/ASA |  | 2 |  |  |  |
| Filament | Primary Color TPU |  | 1 | (OPTIONAL for the case feet) | Amazon |  |

Printed parts are listed in the [Printing Guide](../printing/print_guide.md#printed-parts); source STLs are in the [GitHub repository](https://github.com/MillenniumMachines/Universal-Electronics-Box).

## Fasteners

| Category | Component | Standard | QTY | Note | Recommended | Alternative 1 |
|---|---|---|---|---|---|---|
| Fasteners | M3x10mm SHCS | ISO 4762 / DIN 912 | 40 | (extra fatseners are included in this list) | ACCU |  |
| Fasteners | M3x30mm SHCS | ISO 4762 / DIN 912 | 6 |  | ACCU |  |
| Fasteners | M4x6mm BHCS | ISO 7380-0 | 4 |  | ACCU |  |
| Fasteners | M5x10mm BHCS | ISO 7380-1 | 28 |  | ACCU |  |
| Fasteners | M5x12mm BHCS | ISO 7380-1 | 10 |  | ACCU |  |
| Fasteners | M3 heated inserts |  | 14 | (Choose between voron style or cnc kitchen  style inserts) | CNC KITCHEN | Aliexpress |
| Fasteners | M5 roll in T nut |  | 2 |  | Aliexpress |  |
| Fasteners | M3 roll in T nut |  | 20 |  | Aliexpress |  |
| Fasteners | M5 serrated washer |  | 2 | (This is for grounding the Frame of the control box and  whatever Machine its attached to) | Amazon |  |

## Frame

| Category | Component | Standard | QTY | Note | Recommended | Alternative 1 |
|---|---|---|---|---|---|---|
| Frame | 2020 V-slot extrusion 140mm |  | 4 | (Tap both ends of all extrusions) | Ooznest |  |
| Frame | 2021 V-slot extrusion 430mm |  | 4 |  | Ooznest |  |
| Frame | 2022 V-slot extrusion 410mm |  | 4 |  | Ooznest |  |

## Cables

| Category | Component | Standard | QTY | Note | Recommended | Alternative 1 |
|---|---|---|---|---|---|---|
| Cables | 18AWG (min) Mains wiring (neutral, line, ground) |  |  | NOTE : WIRING LENGTHS WILL CHANGE DEPENDING  ON YOUR NEEDS consult your local guidelines for  regulation wiring sizes |  |  |
| Cables | 18AWG 4 Core for spindle Power |  |  |  |  |  |
| Cables | 20AWG wire for DC power distribution |  |  |  |  |  |
| Cables | 24AWG wire for signal cables |  |  |  |  |  |
| Cables | Nylon Cable Ties (less than 5mm wide) |  | 100 |  | Amazon |  |
| Cables | Fork Spade Terminal |  |  |  | Amazon |  |
| Cables | Ferrule CableTerminations |  |  | (size and use where appropriate) | Amazon |  |
| Cables | JST Connector 3 Pin |  |  |  | Amazon |  |
| Cables | Cable Gromets for ID 30mm |  | 3 |  | Amazon |  |

## Hardware

| Category | Component | Standard | QTY | Note | Recommended | Alternative 1 |
|---|---|---|---|---|---|---|
| Hardware | 35mm DIN Rail 410mm |  | 2 |  | RS components |  |

## Panels

| Category | Component | Standard | QTY | Note | Recommended | Alternative 1 |
|---|---|---|---|---|---|---|
| Panels | 186x450mm 3mm ACM/Acrylic/Polycarbonate |  | 2 |  |  |  |
| Panels | 430x450mm 3mm ACM/Acrylic/Polycarbonate |  | 2 |  |  |  |

## Electronics

| Category | Component | Standard | QTY | Note | Recommended | Alternative 1 |
|---|---|---|---|---|---|---|
| Electronics | Fan | 24V 120mm | 1 |  | amazon |  |
| Electronics | Estop | 2 NC | 1 |  | RS components |  |
| Electronics | Meanwell LRS-350 | 24-60V (recommended 48V) | 1 |  | Digikey |  |
| Electronics | Meanwell HGR-30 | 24V | 1 |  | amazon |  |
| Electronics | KCD4 rocker switches | 220V or 110V rated switches | 1 | only 1 is required should you want,  to add more for auxiliaries  go ahead | amazon |  |
| Electronics | BTT Scylla |  | 1 |  | Scylla |  |
| Electronics | USB/HDMI/RJ45 keystone jacks |  | 0 to 4 | Should you wish to install a Raspberry pi there are 4 available spots for  keystone jacks these are optional. | HDMI | USB |
| Electronics | Raspberry pi 4/5 8GB |  | 0 or 1 | Optional you can use your phone/PC/tablet instead (you will need to provide your own DIN mount for the pi) | amazon |  |
| Electronics | DIN AC terminal Hot |  | 3 | Colors may be different depending on your region, please refer to your countries electrical code | RS components |  |
| Electronics | DIN AC terminal Neutral |  | 3 |  | RS components |  |
| Electronics | DIN AC terminal Ground |  | 3 |  | RS components |  |
| Electronics | Power inlet | IEC20 | 1 | You can buy combined  inlet EMI filters in  110V countries eliminating the need for both | amazon |  |
| Electronics | DIN contactor | 24V DC coil voltage, 3 channel, 220V AC @ 16A | 1 |  | TME |  |
| Electronics | Mini circuit breaker | 13A 220V 2 Pole | 1 |  | amazon |  |
| Electronics | AC EMI filter | 13A 220V | 1 | You may be able to get away if you want to save some money  with no EMI filter especially in 220V countries.  If you experience any  issues due to EMI add one later | amazon |  |
| Electronics | Power Cable | IEC C19 to IEC 60309 | 1 |  | amazon |  |
| Electronics | VFD | 220V 2.2KW | 1 |  |  |  |
| Electronics | Spindle | 2 or 4 pole 400Hz 220V 2.2KW | 1 |  |  |  |
| Electronics | DIN contactor | 24V DC coil voltage, 3 channel, 110V AC @ 20A | 1 | Contactors rated for 220V  will also work for 110V but not the other way around | automation direct |  |
| Electronics | DIN Mini circuit breaker | 20A 110V 2 pole | 1 |  | amazon |  |
| Electronics | AC EMI filter | 20A 110V | 1 | You may be able to get away if you want to save some money  with no EMI filter.  If you experience any  issues due to EMI add one later | amazon |  |
| Electronics | Power Cable | IEC C19 to Nema 5-20P | 1 |  | amazon |  |
| Electronics | VFD | 110V 2.2KW | 1 |  |  |  |
| Electronics | Spindle | 2 or 4 pole 400Hz 110V 2.2KW | 1 |  |  |  |
| Electronics | DIN contactor | 24V DC coil voltage, 3 channel, 220V AC @ 16A | 1 |  | TME |  |
| Electronics | Mini circuit breaker | 13A 220V 2 pole | 1 |  | amazon |  |
| Electronics | AC EMI filter | 13A 220V | 1 | You may be able to get away if you want to save some money  with no EMI filter especially in 220V countries.  If you experience any  issues due to EMI add one later | amazon |  |
| Electronics | Power Cable | IEC C19 to IEC 60309 | 1 |  | amazon |  |
| Electronics | VFD | 220V 1.5KW | 1 |  | DMS |  |
| Electronics | Spindle | 2 or 4 pole 400Hz 220V 1.5KW | 1 |  | DMS |  |
| Electronics | DIN contactor | 24V DC coil voltage, 3 channel, 110V AC @ 16A | 1 | Contactors rated for 220V  will also work for 110V but not the other way around | automation direct |  |
| Electronics | Mini circuit breaker | 15A 110V 2 pole | 1 |  | amazon |  |
| Electronics | AC EMI filter | 15A 110V | 1 | You may be able to get away if you want to save some money  with no EMI filter.  If you experience any  issues due to EMI add one later | amazon |  |
| Electronics | Power Cable | IEC C19 to Nema 5-15P | 1 |  | amazon |  |
| Electronics | VFD | 110V 1.5KW | 1 |  | West3D |  |
| Electronics | Spindle | 2 or 4 pole 400Hz 110V 1.5KW | 1 |  | West3D |  |

## Spindle / VFD options

The BOM spreadsheet groups optional **110 V / 220 V** and **1.5 kW / 2.2 kW** spindle stacks under separate headings. Use the **Electronics** table above for a default **110 V 1.5 kW** VFD and spindle pairing, then adjust PSU, breaker, and contactor ratings for your chosen stack.

!!! warning "110 V 2.2 kW spindle"
    Most domestic 110 V circuits can only just supply a 2.2 kW spindle. We do not recommend this without a dedicated circuit.

## 24 V DC contactor options

| Manufacturer | Model | Rated current [A] | Rated voltage [V] | Poles | Auxiliary contacts | 24 V DC control | Source 1 | Price 1 | Source 2 | Price 2 | Notes |
|---|---|---|---|---|---|---|---|---|---|---|---|
| Baomain | BMHC7-16 | 16 | 400 | 3.0 | 1NC | yes | https://baomain.com/products/baomain-dc-ac-modular-contactor-hum-free-16a-4pole?_pos=3&_sid=8d6df15cb&_ss=r&variant=48922592280880 | 15.39 |  |  |  |
| Schneider Electric | LC1D18BD | 18 | 440 | 3.0 | 1NC+1NO | yes | https://www.amazon.com/dp/B0751H9SVM | 64.0 | https://www.aliexpress.us/item/3256807845054295.html | 33.19 |  |
| Siemens | 3RT20161BB41 | 20 | 220* | 3.0 | 1NO | yes | https://www.amazon.com/Siemens-3RT20161BB41-Contactor-3-Pole-TERMINAL/dp/B003U6615Y/ | 38.6 | https://www.aliexpress.us/item/3256803379863717.html | 44.5 | Higher voltage rating, but amps derate at higher voltages. 20A for both 110 and 220V |
| Schneider Electric | DPE18BL | 40 | 220 | 3.0 | 1NO | yes | https://www.amazon.com/Schneider-Electric-DPE18BL-Contactor-Terminals/dp/B09B2SP56H/ | 39.98 |  |  |  |
| Hofwge | HCH8s-63 | 25 | 220 | 4.0 |  | AC & DC | https://www.aliexpress.us/item/3256804432680878.html | 21.5 |  |  |  |
| CHNT | NC1-1801Z | 18 | 380 | 3.0 | 1NC | yes | https://www.aliexpress.us/item/3256804690998153.html | 32.0 | https://www.aliexpress.us/item/2255800339794785.html | 18.83 | Source 2 Sale: $16.95 |
| CHNT | NC1-1810Z | 18 | 380 | 3.0 | 1NO | yes |  | https://www.aliexpress.us/item/2255800339794785.html | 18.83 | Source 2 Sale: $16.95 |  |
| CHNT | NC1-2501Z | 25 | 380 | 3.0 | 1NC | yes | https://www.aliexpress.us/item/3256804690998153.html | 40.0 | https://www.aliexpress.us/item/2255800339809617.html | 24.67 | Source 2 Sale: $22.20 |
| CHNT | NC1-2510Z | 25 | 380 | 3.0 | 1NO | yes | https://www.aliexpress.us/item/3256804690998153.html | 40.0 | https://www.aliexpress.us/item/2255800339809617.html | 24.67 | Source 2 Sale: $22.21 |
| Altech Corporation | GMD-16M-10-DC24V | 20 | 440 | 3.0 | 1NC | yes | https://www.tme.eu/gb/details/gmd-16m-24vdc-1b/contactors-main-modules/ls-electric/gmd-16m-24vdc-1b/ | 18.75 | https://us.misumi-ec.com/vona2/detail/110400268240/?HissuCode=GMD-16M-DC24V | 36.32 | Source 1: High shipping cost to US; Source 2 Sale: $14.49 |