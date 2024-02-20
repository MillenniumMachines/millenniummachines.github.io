# Sourcing Guide

## Kits

Currently there are no approved kits available, but fear not - the toolsetter uses easily obtainable parts and you can find a full list of them below!

## Individual Parts

|**Category**   | **Component**            | **Standard**       | **Qty** |
| ------------- | ------------------------ | ------------------ | --- |
| Printed parts | Housing                  |                    | 1   |
| Hardware      | 5x7x8 Sleeve Bearing     |                    | 2   |
| Hardware      | M4x6 SHCS                | ISO 4762 / DIN 912 | 1   |
| Hardware      | M2x10 Self-tapping screw |                    | 4   |
| Hardware      | M5x20 Sex-bolt           |                    | 1   |
| Electronics   | HartK Sex-bolt PCB       |                    | 1   |
| Cables        | JST Connector 2 Position | JST-XH             | 1   |

!!! info annotate "Return Spring"
    The Long John Toolsetter can be fitted with a compression spring to help the contact return. You may choose to fit this, however it isn't required. Any appropriately sized low force compression spring should be suitable.

# Printing Guide

The toolsetter part has a sacrificial floor to allow unsupported features to be printed successfully, and overhangs that will become more difficult to print with thicker layers. These floors are designed to work at a layer height of **0.2mm**, so they may not be sliced correctly if your layer height is not 0.2mm.

**Unless you're willing to experiment and almost certainly waste filament, stick with 0.2mm layers.**

We provide a **Minimum Wall Thickness** for every printable part, which is the minimum **total** thickness of your perimeter lines and top and bottom solid layers. This depends on the size of your nozzle and line width settings in your slicer so must be calculated.

Given a 0.4mm nozzle, 100% perimeter line width, 0.2mm layers and a minimum wall thickness of 2.4mm, you would set your slicer to generate a _minimum_ of 6 perimeters and 12 top / bottom layers.

## The Long John Toolsetter
| **Name** | **Infill** | **Min. Wall Thickness** | **Material** | **Qty** | **Accent Color** |
|----------|------------|-------------------------|--------------|--------:|----------------------|
| [Housing](https://github.com/MillenniumMachines/Long-John-Toolsetter/blob/main/stls/Housing.stl)               | 40%  | 1.6mm  | ABS/ASA | 4 | :material-close: No |
