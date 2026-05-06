# Milo V2 - Printing guide

!!! note
    See also the [Introduction](../manual/chapters/20_introduction.md) chapter for the full print profile table. Below is a summary aligned with the official manual.

## Layer height and nozzle

Unless you are willing to experiment (and likely waste filament), use **0.2 mm** layers. Thicker layers make overhangs on several parts significantly harder.

Minimum wall thickness values in the repository assume a **0.4 mm** nozzle. If you use a different nozzle diameter, recalculate wall counts.

## File naming

- **Accent colour:** filenames prefixed with `[a]` are intended for your accent filament.
- **Quantity:** if a filename ends with `x#` (for example `x8`), that is how many copies you need of that part for one machine.

## Heat-set inserts

Parts that take M3 heat-set inserts are provided in variants for **CNC-Kitchen**-style inserts and **Voron**-style inserts. Print the STLs that match the inserts you purchased.

## Structural profiles (from manual)

| Profile Name   | Structural | Semi structural | Aesthetic |
|----------------|------------|-----------------|-----------|
| Profile code   | S          | SS              | A         |
| Infill %       | 45         | 25              | 20        |
| Wall count     | 6          | 4               | 3         |
| Top/bottom layers | 6       | 5               | 5         |
| Nozzle (mm)    | 0.4        | 0.4             | 0.4       |

Lead- and ballscrew options are called out in the [Introduction](../manual/chapters/20_introduction.md).

For hole finishing and other practical tips, the [Milo 1.5 printing guide](../../milo_1.5/printing/print_guide.md) is still a useful reference for techniques (drilling holes, skirts, etc.) even where part names differ.
