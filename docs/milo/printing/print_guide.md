# Printing Guide

## File Naming

With your STL files downloaded and your printer warmed up, you may be wondering which parts to print in your favorite colors? Have no fear, we've got your back - each file is labelled.

## Primary Color

Example: `Handwheel Body x2.stl`
These files have no prefix in their filename so are safe to print in your primary color.

## Accent Color

Example: `[a] Table Bolt Down Bracket A x2.stl`
These files are prefixed with `[a]` and are intended to be printed in your chosen accent color.

## Quantity Required

Example: `Handwheel Body x2.stl`
If any file ends with `x#`, that is telling you the quantity of that part required to build the machine.

## Part Versions

Example: `Skirt Front A xxxxxx.stl`

Note the descriptor at the end of the file name - while there are many types of Skirt Front "A" files, they all vary in their design and some are even mirrors of others so as to mount devices on either side.

!!! tip
    Some printed parts have multiple versions in order to cater for different machine setups - be aware that not all versions need to be printed to build your machine.

    ![skirt variants picture](./skirt_variant.png){: .shadow}

    Choose the parts you need based on your build requirements.

## Drilling Out Holes

To make some features printable without support, some features are printed with a sacrificial floor. These parts will need to be drilled and or cut out before use.

!!! note "Layer Height and Line Width"
    Some parts have sacrificial floors to allow unsupported features to be printed successfully. These floors are designed to work at a layer height of **0.2mm**, so they may not be sliced correctly if your layer height is not 0.2mm.

    There are also some parts containing overhangs that will become more difficult to print with thicker layers due to the overhang angle.

    **Unless you're willing to experiment and almost certainly waste filament, stick with 0.2mm layers.**

    We provide a **Minimum Wall Thickness** for every printable part, which is the minimum **total** thickness of your perimeter lines and top and bottom solid layers. This depends on the size of your nozzle and line width settings in your slicer so must be calculated.

    Given a 0.4mm nozzle, 100% perimeter line width, 0.2mm layers and a minimum wall thickness of 2.4mm, you would set your slicer to generate a _minimum_ of 6 perimeters and 12 top / bottom layers.

## X-Axis Assembly
| **Name** | **Infill** | **Min. Wall Thickness** | **Material** | **Qty** | **Accent Color** |
|----------|------------|-------------------------|--------------|--------:|----------------------|
| [X Axis Table support (Ends)    ](https://github.com/MillenniumMachines/Milo-v1.5/tree/main/STL%20Files/Minimill%20Main/X%20Axis%20STLs/X%20Axis%20Table%20Support%20Ends%20x4%20.stl)               | 40%  | 1.6mm  | ABS/ASA | 4 | :material-close: No |
| [X Axis Table support (Centres) ](https://github.com/MillenniumMachines/Milo-v1.5/tree/main/STL%20Files/Minimill%20Main/X%20Axis%20STLs/X%20Axis%20Table%20Support%20Centre%20x2%20.stl)             | 40%  | 1.6mm  | ABS/ASA | 2 | :material-close: No |
| [X Axis Motor Mount             ](https://github.com/MillenniumMachines/Milo-v1.5/tree/main/STL%20Files/Minimill%20Main/X%20Axis%20STLs/X%20Axis%20Motor%20Mount%20x1.stl)                           | 40%  | 1.6mm  | ABS/ASA | 1 | :material-close: No |
| [X Axis Bearing Block           ](https://github.com/MillenniumMachines/Milo-v1.5/tree/main/STL%20Files/Minimill%20Main/X%20Axis%20STLs/X%20Axis%20Bearing%20Block%20x1.stl)                         | 40%  | 1.6mm  | ABS/ASA | 1 | :material-close: No |
| [X Axis Anti Backlash Nut       ](https://github.com/MillenniumMachines/Milo-v1.5/tree/main/STL%20Files/Minimill%20Main/X%20Axis%20STLs/X%20Axis%20Anti%20Backlash%20Nut%20x1.stl)                   | 40%  | 1.6mm  | ABS/ASA | 1 | :material-close: No |

## Y-Axis Assembly
| **Name** | **Infill** | **Min. Wall Thickness** | **Material** | **Qty** | **Accent Color** |
|----------|------------|-------------------------|--------------|--------:|----------------------|
| [Y-Axis Motor Mount             ](https://github.com/MillenniumMachines/Milo-v1.5/tree/main/STL%20Files/Minimill%20Main/Y%20Axis%20STLs/Y%20Axis%20Motor%20Mount%20x1.stl)                           | 40%  | 1.6mm | ABS/ASA | 1 | :material-close: No |
| [Y-Axis Bearing Block           ](https://github.com/MillenniumMachines/Milo-v1.5/tree/main/STL%20Files/Minimill%20Main/Y%20Axis%20STLs/Y%20Axis%20Bearing%20Block%20x1.stl)                         | 40%  | 1.6mm | ABS/ASA | 1 | :material-close: No |
| [Y-Axis Anti Backlash Nut       ](https://github.com/MillenniumMachines/Milo-v1.5/tree/main/STL%20Files/Minimill%20Main/Y%20Axis%20STLs/Y%20Axis%20Anti%20Backlash%20Nut%20x1.stl)                   | 40%  | 1.6mm | ABS/ASA | 1 | :material-close: No |

## Z-Axis Assembly
| **Name** | **Infill** | **Min. Wall Thickness** | **Material** | **Qty** | **Accent Color** |
|----------|------------|-------------------------|--------------|--------:|----------------------|
| [Z Axis Motor Mount             ](https://github.com/MillenniumMachines/Milo-v1.5/tree/main/STL%20Files/Minimill%20Main/Z%20Axis%20STLs/Z%20Motor%20Mount%20x1.stl)                                  | 40%  | 1.6mm | ABS/ASA | 1 | :material-close: No |
| [Z Axis Bearing Block           ](https://github.com/MillenniumMachines/Milo-v1.5/tree/main/STL%20Files/Minimill%20Main/Z%20Axis%20STLs/%5Ba%5D%20Z%20Axis%20Bearing%20Block%20x1.stl)               | 40%  | 1.6mm | ABS/ASA | 1 | :material-close: Yes |
| [Z Axis Anti Backlash Nut       ](https://github.com/MillenniumMachines/Milo-v1.5/tree/main/STL%20Files/Minimill%20Main/Z%20Axis%20STLs/Z%20Axis%20Anti%20Backlash%20Nut%20x1.stl)                   | 40%  | 1.6mm | ABS/ASA | 1 | :material-close: No |

## Main Column
| **Name** | **Infill** | **Min. Wall Thickness** | **Material** | **Qty** | **Accent Color** | **Note** |
|----------|------------|-------------------------|--------------|--------:|----------------------|----------|
| [Ballast Box                    ](https://github.com/MillenniumMachines/Milo-v1.5/tree/main/STL%20Files/Minimill%20Main/Main%20Column/Ballast%20Box%20x1.stl)                                        | 40%  | 2.4mm | ABS/ASA | 1 | :material-close: No | Optional - must be water tight |
| [Ballast Cap                    ](https://github.com/MillenniumMachines/Milo-v1.5/tree/main/STL%20Files/Minimill%20Main/Main%20Column/Ballast%20Cap%20x1.stl)                                        | 40%  | 2.4mm | ABS/ASA | 1 | :material-close: No | Optional |
| [Joining Plate A                ](https://github.com/MillenniumMachines/Milo-v1.5/tree/main/STL%20Files/Minimill%20Main/Main%20Column/Column%20Plate%20A%20x1.stl)                                   | 40%  | 2.4mm | ABS/ASA | 1 | :material-close: No | |
| [Joining Plate A Mirror         ](https://github.com/MillenniumMachines/Milo-v1.5/tree/main/STL%20Files/Minimill%20Main/Main%20Column/Column%20Plate%20A%20Mirror%20x1.stl)                          | 40%  | 2.4mm | ABS/ASA | 1 | :material-close: No | |
| [Joining Plate B                ](https://github.com/MillenniumMachines/Milo-v1.5/tree/main/STL%20Files/Minimill%20Main/Main%20Column/Column%20Plate%20B%20x1.stl)                                   | 40%  | 2.4mm | ABS/ASA | 1 | :material-close: No | |
| [Joining Plate B Mirror         ](https://github.com/MillenniumMachines/Milo-v1.5/tree/main/STL%20Files/Minimill%20Main/Main%20Column/Column%20Plate%20B%20Mirror%20x1.stl)                          | 40%  | 2.4mm | ABS/ASA | 1 | :material-close: No | |
| [Joining Plate C                ](https://github.com/MillenniumMachines/Milo-v1.5/tree/main/STL%20Files/Minimill%20Main/Main%20Column/Column%20Plate%20C%20x1.stl)                                   | 40%  | 2.4mm | ABS/ASA | 1 | :material-close: No | |
| [Joining Plate C Mirror         ](https://github.com/MillenniumMachines/Milo-v1.5/tree/main/STL%20Files/Minimill%20Main/Main%20Column/Column%20Plate%20C%20Mirror%20x1.stl)                          | 40%  | 2.4mm | ABS/ASA | 1 | :material-close: No | |
| [Z Reinforcement Bracket        ](https://github.com/MillenniumMachines/Milo-v1.5/tree/main/STL%20Files/Minimill%20Main/Main%20Column/Z%20Reinforcement%20Bracket%20x1.stl)                          | 40%  | 2.4mm | ABS/ASA | 1 | :material-close: No | |
| [Z Reinforcement Bracket Mirror ](https://github.com/MillenniumMachines/Milo-v1.5/tree/main/STL%20Files/Minimill%20Main/Main%20Column/Z%20Reinforcement%20Bracket%20Mirror%20x1.stl)                 | 40%  | 2.4mm | ABS/ASA | 1 | :material-close: No | |

## Spindle Mount
| **Name** | **Infill** | **Min. Wall Thickness** | **Material** | **Qty** | **Accent Color** |
|----------|------------|-------------------------|--------------|--------:|----------------------|
| [80mm Spindle Mount Part A      ](https://github.com/MillenniumMachines/Milo-v1.5/tree/main/STL%20Files/Minimill%20Main/Spindle%20Mount/%5Ba%5D%20Spindle%20Mount%2080mm%20Part%20A%20x1.stl)        | 40%  | 2.4mm | ABS/ASA | 1 | :material-check: Yes |
| [80mm Spindle Mount Part B      ](https://github.com/MillenniumMachines/Milo-v1.5/tree/main/STL%20Files/Minimill%20Main/Spindle%20Mount/Spindle%20Mount%2080mm%20Part%20B%20x1.stl)                  | 40%  | 2.4mm | ABS/ASA | 1 | :material-close: No |
| [65mm Spindle Mount Part A      ](https://github.com/MillenniumMachines/Milo-v1.5/tree/main/STL%20Files/Minimill%20Main/Spindle%20Mount/%5Ba%5D%20Spindle%20Mount%2065mm%20Part%20A%20x1.stl)        | 40%  | 2.4mm | ABS/ASA | 1 | :material-check: Yes |
| [65mm Spindle Mount Part B      ](https://github.com/MillenniumMachines/Milo-v1.5/tree/main/STL%20Files/Minimill%20Main/Spindle%20Mount/%5Ba%5D%20Spindle%20Mount%2080mm%20Part%20A%20x1.stl)        | 40%  | 2.4mm | ABS/ASA | 1 | :material-close: No |
| [Logo Insert                    ](https://github.com/MillenniumMachines/Milo-v1.5/tree/main/STL%20Files/Minimill%20Main/Spindle%20Mount/Logo%20Insert%20x1.stl)                                      | 40%  | 2.4mm | ABS/ASA | 1 | :material-close: No |

## Cable Chain Mounts
| **Name** | **Infill** | **Min. Wall Thickness** | **Material** | **Qty** | **Accent Color** |
|----------|------------|-------------------------|--------------|--------:|----------------------|
| [XY Drag Chain Transition       ](https://github.com/MillenniumMachines/Milo-v1.5/tree/main/STL%20Files/Minimill%20Main/Cable%20Chain%20Mounts/%5Ba%5D%20XY%20Drag%20Chain%20Transition%20x1.stl)    | 40%  | 1.2mm   | ABS/ASA | 1 | :material-check: Yes |
| [Y Drag Chain Mount             ](https://github.com/MillenniumMachines/Milo-v1.5/tree/main/STL%20Files/Minimill%20Main/Cable%20Chain%20Mounts/%5Ba%5D%20Y%20Drag%20Chain%20Mount%20x1.stl)          | 40%  | 1.2mm   | ABS/ASA | 1 | :material-check: Yes |
| [Z Drag Chain Mount A           ](https://github.com/MillenniumMachines/Milo-v1.5/tree/main/STL%20Files/Minimill%20Main/Cable%20Chain%20Mounts/%5Ba%5D%20Z%20Drag%20Chain%20Mount%20A%20x1.stl)      | 40%  | 1.2mm   | ABS/ASA | 1 | :material-check: Yes |
| [Z Drag Chain Mount B           ](https://github.com/MillenniumMachines/Milo-v1.5/tree/main/STL%20Files/Minimill%20Main/Cable%20Chain%20Mounts/%5Ba%5D%20Z%20Drag%20Chain%20Mount%20B%20x1.stl)      | 40%  | 1.2mm   | ABS/ASA | 1 | :material-check: Yes |
| [Z Cable Redirect Hook          ](https://github.com/MillenniumMachines/Milo-v1.5/tree/main/STL%20Files/Minimill%20Main/Cable%20Chain%20Mounts/%5Ba%5D%20Z%20Cable%20Redirect%20Hook%20x1.stl)       | 40%  | 1.2mm   | ABS/ASA | 1 | :material-check: Yes |
| [Z Axis Cable Chain Backer      ](https://github.com/MillenniumMachines/Milo-v1.5/tree/main/STL%20Files/Minimill%20Main/Cable%20Chain%20Mounts/%5Ba%7D%20Z%20Axis%20Cable%20Chain%20Backer%20x1.stl) | 40%  | 1.2mm   | ABS/ASA | 1 | :material-check: Yes |

## Electronics Table
| **Name** | **Infill** | **Min. Wall Thickness** | **Material** | **Qty** | **Accent Color** | **Note** |
|----------|------------|-------------------------|--------------|--------:|----------------------|----------|
| [Table Bolt Down Bracket A      ](https://github.com/MillenniumMachines/Milo-v1.5/tree/main/STL%20Files/Electronics%20Table/%5Ba%5D%20Table%20Bolt%20Down%20Bracket%20A%20x2.stl)                    | 40%  | 1.6mm | ABS/ASA | 2 | :material-check: Yes | |
| [Table Bolt Down Bracket B      ](https://github.com/MillenniumMachines/Milo-v1.5/tree/main/STL%20Files/Electronics%20Table/%5Ba%5D%20Table%20Bolt%20Down%20Bracket%20B%20x2.stl)                    | 40%  | 1.6mm | ABS/ASA | 2 | :material-check: Yes | |
| [Cable Channel                  ](https://github.com/MillenniumMachines/Milo-v1.5/tree/main/STL%20Files/Electronics%20Table/Cable%20Channel%20x1.stl)                                                | 40%  | 1.6mm | ABS/ASA | 1 | :material-close: No | |
| [Cable Channel Cover            ](https://github.com/MillenniumMachines/Milo-v1.5/tree/main/STL%20Files/Electronics%20Table/Cable%20Channel%20Cover%20x1.stl)                                        | 40%  | 1.6mm | ABS/ASA | 1 | :material-close: No | |
| [PSU Mounting Bracket A x2      ](https://github.com/MillenniumMachines/Milo-v1.5/tree/main/STL%20Files/Electronics%20Table/PSU%20Mounting%20Bracket%20A%20x2.stl)                                   | 40%  | 1.6mm | ABS/ASA | 2 | :material-close: No | |
| [PSU Mounting Bracket B x2      ](https://github.com/MillenniumMachines/Milo-v1.5/tree/main/STL%20Files/Electronics%20Table/PSU%20Mounting%20Bracket%20B%20x2.stl)                                   | 40%  | 1.6mm | ABS/ASA | 2 | :material-close: No | |
| [Mainboard Mount                ](https://github.com/MillenniumMachines/Milo-v1.5/tree/main/STL%20Files/Electronics%20Table/Mainboard%20Mount%20x1.stl)                                              | 40%  | 1.6mm | ABS/ASA | 1 | :material-close: No | |
| [Rear Skirt A                   ](https://github.com/MillenniumMachines/Milo-v1.5/tree/main/STL%20Files/Electronics%20Table/Rear%20Skirt%20A%20x1.stl)                                               | 40%  | 1.6mm | ABS/ASA | ? | :material-close: No | |
| [Rear Skirt B                   ](https://github.com/MillenniumMachines/Milo-v1.5/tree/main/STL%20Files/Electronics%20Table/Rear%20Skirt%20B%20x1.stl)                                               | 40%  | 1.6mm | ABS/ASA | ? | :material-close: No | |
| [Front Skirt A                  ](https://github.com/MillenniumMachines/Milo-v1.5/tree/main/STL%20Files/Electronics%20Table/Skirt%20Front%20A%20Solid%20x1.stl)                                      | 40%  | 1.6mm | ABS/ASA | ? | :material-close: No | (there are many variants of the front skirt pick - one that suits your build best) |
| [Front Skirt B                   ](https://github.com/MillenniumMachines/Milo-v1.5/tree/main/STL%20Files/Electronics%20Table/Skirt%20Front%20B%20Solid%20x1.stl)                                     | 40%  | 1.6mm | ABS/ASA | ? | :material-close: No | (there are many variants of the front skirt - pick one that suits your build best) |
| [TPU Feet                       ](https://github.com/MillenniumMachines/Milo-v1.5/tree/main/STL%20Files/Electronics%20Table/TPU%20Feet%20x4.stl)                                                     | 60%  | 2mm   | TPU     | ? | :material-close: No | |

!!! tip
    The "TPU feet" are not required if building a Casa enclosure for the mill. Instead use the parts from the Casa print guide.

## Accessories
| **Name** | **Infill** | **Min. Wall Thickness** | **Material** | **Qty** | **Accent Color** |
|----------|------------|-------------------------|--------------|--------:|----------------------|
| [Handwheel                      ](https://github.com/MillenniumMachines/Milo-v1.5/tree/main/STL%20Files/Minimill%20Main/Hand%20Wheels/Handwheel%20Body%20x2%20.stl)                                  | 40%  | 1.6mm | ABS/ASA | ? | :material-close: No | Optional                                                                         |
| [Handwheel Handle               ](https://github.com/MillenniumMachines/Milo-v1.5/tree/main/STL%20Files/Minimill%20Main/Hand%20Wheels/Handwheel%20Handle%20x2.stl)                                   | 40%  | 1.6mm | ABS/ASA | ? | :material-close: No | Optional                                                                         |
