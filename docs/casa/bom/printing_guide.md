# Printing Guide

## Print Profiles

Casa uses 3 different print profiles. Each profile is designed around a 0.4 mm nozzle and 0.2 mm layer height.

!!! note "Layer Height and Line Width"
    
    **Unless you're willing to experiment and almost certainly waste filament, stick with 0.2mm layers.** Some parts contain overhangs that will become more difficult to print with thicker layers due to the overhang angle.

    We provide a **Minimum Wall Thickness** for every printable par based on a 0.4 mm nozzle. If you are planning to use a different size of nozzle you must recalculate the required wall counts.

| Profile Name       | Structural   | Semi Structural   | Aesthetic    |
|:-------------------|:-------------|:------------------|:-------------|
| Profile Code       | S            | SS                | A            |
| Infill Density [%] | 45           | 25                | 20           |
| Wall count         | 6            | 4                 | 3            |
| Top/bottom layers  | 6            | 5                 | 5            |
| Nozzle size [mm]   | 0.4          | 0.4               | 0.4          |

## File Naming

With your STL files downloaded and your printer warmed up, you may be wondering which parts to print in your favorite colors? Have no fear, we've got your back - each file is labelled.

### Color

All Casa parts are designed to be printed in a single primary colour. Don't let this stop you from mixing and matching colours to make you own colour scheme though!

### Quantity Required

Example: `Panel-Clip-A x8.stl`
If any file ends with `x#`, that is telling you the quantity of that part required to build the enclosure.

## Printed Parts

### Casa Main Module
| Part Name                   | Part setting   |   Quantity | Material         |
|:----------------------------|:---------------|-----------:|:-----------------|
| Panel-Clip-A                | SS             |          8 | ABS/ASA/PETG/PLA |
| Panel-Clip-B                | SS             |         17 | ABS/ASA/PETG/PLA |
| Panel-Clip-C                | SS             |          7 | ABS/ASA/PETG/PLA |
| Panel-Clip-D                | SS             |         39 | ABS/ASA/PETG/PLA |
| Panel-Clip-E                | SS             |          4 | ABS/ASA/PETG/PLA |
| Panel-Clip-F                | SS             |          2 | ABS/ASA/PETG/PLA |
| Panel-Clip-G                | SS             |          7 | ABS/ASA/PETG/PLA |
| Panel-Clip-H                | SS             |          2 | ABS/ASA/PETG/PLA |
| Panel-Clip-I                | SS             |          2 | ABS/ASA/PETG/PLA |
| Panel-Clip-J                | SS             |          4 | ABS/ASA/PETG/PLA |
| Panel-Clip-K                | SS             |          8 | ABS/ASA/PETG/PLA |
| Front-Vent-Cover            | SS             |          1 | ABS/ASA/PETG/PLA |
| Front-Mid-Cover             | SS             |          1 | ABS/ASA/PETG/PLA |
| Front-Switch-Cover          | SS             |          1 | ABS/ASA/PETG/PLA |
| Rear-Inlet-Cover            | SS             |          1 | ABS/ASA/PETG/PLA |
| Rear-Mid-Cover              | SS             |          1 | ABS/ASA/PETG/PLA |
| Rear-Lower-Cover            | SS             |          1 | ABS/ASA/PETG/PLA |
| Electronics-Bay-Passthrough | SS             |          2 | ABS/ASA/PETG/PLA |
| Passthrough-Plug            | SS             |          4 | ABS/ASA/PETG/PLA |
| DIN-Rail-Enclosure-Mount-A  | SS             |          4 | ABS/ASA/PETG/PLA |
| DIN-Rail-Enclosure-Mount-B  | SS             |          2 | ABS/ASA/PETG/PLA |
| Extrusion-Handle            | A              |          2 | ABS/ASA/PETG/PLA |

### Casa Basement Module
| Part Name    | Part setting   |   Quantity | Material         |
|:-------------|:---------------|-----------:|:-----------------|
| Skirt-A      | SS             |          2 | ABS/ASA/PETG/PLA |
| Skirt-B      | SS             |          2 | ABS/ASA/PETG/PLA |
| Skirt-C      | SS             |          2 | ABS/ASA/PETG/PLA |
| Skirt-D      | SS             |          2 | ABS/ASA/PETG/PLA |
| Skirt-E      | S              |          2 | ABS/ASA/PETG/PLA |
| Skirt-F      | SS             |          2 | ABS/ASA/PETG/PLA |
| Skirt-G      | SS             |          2 | ABS/ASA/PETG/PLA |
| Skirt-H      | SS             |          2 | ABS/ASA/PETG/PLA |
| Skirt-I      | SS             |          2 | ABS/ASA/PETG/PLA |
| Skirt-J      | SS             |          4 | ABS/ASA/PETG/PLA |
| Skirt-K      | SS             |          4 | ABS/ASA/PETG/PLA |
| Skirt-L      | SS             |          4 | ABS/ASA/PETG/PLA |
| Leg-A        | S              |          2 | ABS/ASA/PETG/PLA |
| Leg-B        | S              |          2 | ABS/ASA/PETG/PLA |
| Foot         | SS             |          4 | TPU              |
| Chip-Canal-A | SS             |          1 | ABS/ASA/PETG/PLA |
| Chip-Canal-B | SS             |          1 | ABS/ASA/PETG/PLA |
| Chip-Canal-C | SS             |          1 | ABS/ASA/PETG/PLA |
| Chip-Canal-D | SS             |          1 | ABS/ASA/PETG/PLA |

### LRS-350 PSU Module
| Part Name         | Part setting   |   Quantity | Material     |
|:------------------|:---------------|-----------:|:-------------|
| LRS-350-DIN-Mount | SS             |          2 | ABS/ASA/PETG |

### Mellow fly CDY V3 Module
| Part Name                      | Part setting   |   Quantity | Material     |
|:-------------------------------|:---------------|-----------:|:-------------|
| Mellow-Fly-CDY-DIN-Mount-Right | SS             |          1 | ABS/ASA/PETG |
| Mellow-Fly-CDY-DIN-Mount-Left  | SS             |          1 | ABS/ASA/PETG |

### LDO I/O expander Module
| Part Name                        | Part setting   |   Quantity | Material     |
|:---------------------------------|:---------------|-----------:|:-------------|
| LDO-I/O-Expander-DIN-Mount-Right | SS             |          1 | ABS/ASA/PETG |
| LDO-I/O-Expander-DIN-Mount-Left  | SS             |          1 | ABS/ASA/PETG |

### UHP/LMF-350 PSU Module
| Part Name                   | Part setting   |   Quantity | Material     |
|:----------------------------|:---------------|-----------:|:-------------|
| UHP/LMF-350-DIN-Mount-Right | SS             |          1 | ABS/ASA/PETG |
| UHP/LMF-350-DIN-Mount-Left  | SS             |          1 | ABS/ASA/PETG |
