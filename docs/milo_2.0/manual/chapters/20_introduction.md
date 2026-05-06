# Introduction

!!! note
    Text extracted with `pdftotext -layout` from **MiloV2-Manual.pdf** (bundled with the Milo V2 repository). Diagrams from the PDF will be added under `manual/img/` when assets are available.

You are building a machine that can cut metal, cause serious injury, and start fires if it is misused or wired incorrectly.

!!! warning
    Follow the official manual and any supplementary electronics documentation to the letter. If you are unsure about a step—especially for mains wiring, VFDs, or spindle rotation—stop and ask on the [Millennium Machines Discord](https://discord.gg/ya4UUj7ax2) or seek qualified help.

Milo and Miley V2 use a **moving-table** or **fixed-X** layout respectively; both are documented here with **Milo only** and **Miley only** markers where the steps differ. Control electronics are built around the [Universal Electronics Box](https://github.com/MillenniumMachines/Universal-Electronics-Box) ecosystem rather than a “board in the base” recipe from earlier revisions.

## Printing and machine configuration (from manual)

!!! tip
    Several pages in the [official PDF](https://github.com/MillenniumMachines/Milo-V2.0/blob/main/Manual/MiloV2-Manual.pdf) use **two columns**. In the extract below, both columns sometimes appear on a single line with a large space between them. When something reads oddly, check the PDF layout.


Unless you're willing to experiment and almost certainly waste filament, stick with 0.2mm layers. Some parts contain overhangs that will become more difficult to print with thicker layers due to the overhang angle.

With your STL files downloaded and your printer warmed up, you may be wondering which parts to print in your favorite colors.


We provide a Minimum Wall Thickness for every printable part based on a 0.4 mm nozzle. If you are planning to use a different size of nozzle you must recalculate the required wall counts.

Have no fear, we've got your back — each file is labeled with [a] in the name to indicate the print in your accent color.


Quantity Required Example: Panel-Clip-A x8.stl If any file ends with x#, that tells you the quantity of that part required to build the mill.


### Print profile (structural / semi-structural / aesthetic)

| Parameter | Structural (S) | Semi structural (SS) | Aesthetic (A) |
| --- | --- | --- | --- |
| Profile code | S | SS | A |
| Infill density [%] | 45 | 25 | 20 |
| Wall count | 6 | 4 | 3 |
| Top/bottom layers | 6 | 5 | 5 |
| Nozzle size [mm] | 0.4 | 0.4 | 0.4 |



All 3D-printed parts that use M3 heat-set inserts are supplied in two versions: one for CNC-Kitchen inserts and one for Voron inserts. Make sure to select the STL that matches the style of insert you’re using.


### Heat-set insert variants (per manual drawing)

| | CNC-Kitchen style | Voron style |
| --- | --- | --- |
| Reference depth / callout (mm) | 4.600 | 5 |

Leadscrew or Ballscrew?
Both Milo and Miley are designed to work with TR8×8 leadscrews or SFK0802 ballscrews.
That said, the standard—and the configuration we recommend—is the TR8×8 leadscrew.
Cost aside, there are a few reasons why leadscrews tend to make more sense for small,
desktop-sized CNC machines. With their 8 mm pitch, the motors don’t need to spin as fast to reach practical feed rates, especially when running multi-flute end mills.

Ballscrews, like the SFK0802, have clear advantages in efficiency and backlash reduction, which is why they’re popular in larger or industrial machines. However, with only a 2 mm
lead, the stepper motors must spin four times faster to achieve the same travel speed as an 8
mm leadscrew. At those higher RPMs, stepper torque drops off quickly, limiting acceleration and cutting force. Unless the system uses servo motors, that efficiency advantage can easily be offset by the loss in usable torque.
In practice, 8 mm leadscrews strike the best balance between speed, cost, and reliability.
They’re quiet, simple to install, and more forgiving of small alignment errors. We only recommend ballscrews if you plan to run servos or don’t mind being limited to single-flute tooling.


### Machine travel references (see PDF diagrams)

The manual lists **660.4 mm** and **698.2 mm** as shared Y/Z travel references for both variants.

| Diagram grid | Milo (mm) | Miley (mm) |
| --- | --- | --- |
| Row 1 | 348 | 308 |
| Row 2 | 1026 | 658 |


---

[Previous: Acknowledgements](10_acknowledgements.md) | [Next: 30 hardware reference](30_hardware_reference.md)
