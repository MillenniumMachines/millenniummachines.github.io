# Universal Electronics Box - Printing guide

<!-- Source: Milennium Universal Electronics box Print List.xlsx (Universal-Electronics-Box repo) -->

!!! note
    Values below match the official print list spreadsheet. Use **0.2 mm** layers and a **0.4 mm** nozzle unless you are willing to experiment and likely waste filament.

## Print profiles

| Profile | Wall count | Top/bottom layers | Nozzle | Layer height | Infill % | Infill type |
| --- | --- | --- | --- | --- | --- | --- |
| A (aesthetic) | 3 | 5 | 0.4 mm | 0.2 mm | 20 | Gyroid/Cubic |
| SS (semi structural) | 4 | 5 | 0.4 mm | 0.2 mm | 25 | Gyroid/Cubic |
| S (structural) | 6 | 6 | 0.4 mm | 0.2 mm | 45 | Gyroid/Cubic |

## Layer height and nozzle

Unless you are willing to experiment (and likely waste filament), use **0.2 mm** layers.

Minimum wall thickness values assume a **0.4 mm** nozzle. If you use a different nozzle diameter, recalculate wall counts.

## File naming

- **Accent colour:** filenames prefixed with `[a]` are intended for your accent filament.
- **Quantity:** if a filename ends with `x#` (for example `x4`), that is how many copies you need for one enclosure.

## Heat-set inserts

Parts that take M3 heat-set inserts are provided in variants for **CNC-Kitchen**-style inserts and **Voron**-style inserts. Print the STLs that match the inserts you purchased (look for `Voron-Inserts` in the filename).

| | CNC-Kitchen style | Voron style |
| --- | --- | --- |
| Reference depth / callout (mm) | 4.600 | 5 |

## Printed parts

### Panels

| Part name | Part setting | Quantity | Material | Accent | Notes |
| --- | --- | --- | --- | --- | --- |
| [a]-Keystone-Blank-Insert-x4-A | A | 4 | ABS | Y | This is a VORON DESIGN part Go check them out |
| Extrusion-Handle-x2-A | A | 2 | ABS | N |  |
| Front-Estop-cover-34mm-x1-SS | SS | 1 | ABS | N |  |
| Front-Inlet-Cover-x1-A | A | 1 | ABS | N |  |
| Front-Mid-Cover-x1-A | A | 1 | ABS | N |  |
| Panel-Clip-F-x2-A | A | 2 | ABS | N |  |
| Rear-Inlet-Cover-Voron-Inserts-x1-A | A | 1 | ABS | N |  |
| Rear-Inlet-Cover-x1-A | A | 1 | ABS | N |  |
| Rear-lower-cover-x1-A | A | 1 | ABS | N |  |
| Rear-Mid-Cover-x1-A | A | 1 | ABS | N |  |

### Mounts

| Part name | Part setting | Quantity | Material | Accent | Notes |
| --- | --- | --- | --- | --- | --- |
| Din-Rail-Enclosure-Mount-x4-A | A | 4 | ABS | N |  |
| LRS-350-DIN-Mount-x1-or-2-SS | SS | 1 or 2 | ABS | N | If your VFD isn't too big i'd recommend printing 2 |
| Scylla-Din-Adapter-Left-x1-SS | SS | 1 | ABS | N |  |
| Scylla-Din-Adapter-Left-Voron-Inserts-x1-SS | SS | 1 | ABS | N |  |
| Scylla-Din-Adapter-Right-x1-SS | SS | 1 | ABS | N |  |
| Scylla-Din-Adapter-Right-Voron-Inserts-x1-SS | SS | 1 | ABS | N |  |
| Scylla-Din-Mount-x2-SS | SS | 2 | ABS | N |  |

### Cable Channels

| Part name | Part setting | Quantity | Material | Accent | Notes |
| --- | --- | --- | --- | --- | --- |
| 145mm-Lid-x4-A | A | 4 | ABS | N | All of the cable ducts were made using THIS tool  then modified further check it out |
| 145mm-Tray-x4-A | A | 4 | ABS | N |  |
| 165mm-Lid-x6-A | A | 6 | ABS | N |  |
| 165mm-Tray-x6-A | A | 6 | ABS | N |  |
| Corner-Lid-x4-A | A | 4 | ABS | N |  |
| Corner-Tray-x4-A | A | 4 | ABS | N |  |
| T-Junction-Lid-x2-A | A | 2 | ABS | N |  |
| T-Junction-Tray-x2-A | A | 2 | ABS | N |  |

### Feet

| Part name | Part setting | Quantity | Material | Accent | Notes |
| --- | --- | --- | --- | --- | --- |
| TPU-Foot-x4-A | A | 4 | TPU | N |  |
