# Pre-flight checks

These checks mirror the Milo V1.5 workflow but **assume** you completed wiring through the [Universal Electronics Box](https://github.com/MillenniumMachines/Universal-Electronics-Box) and flashed RRF per [Install RRF](130_install_rrf.md).

## Axis directions

Configure motion so the tool moves safely relative to the table for **your** variant (Milo vs Miley). When in doubt, command tiny moves (`G91` relative jogs) before enabling high-speed homing.

Use any official diagram packaged with your RRF config; if none exists yet, draw a quick sketch of “table right = X+?” for your build and verify against CAD.

## Endstop query

With power applied but the spindle stationary, exercise each endstop and run `M119` from the Duet Web Control console (or equivalent). Every sensor must read **open** vs **triggered** consistently with your `config.g` expectations.

## Homing routines

Test `G28 Z` first (or the procedure documented for your kit), then individual `home*.g` files, and finally `G28`. Confirm retract distances clear fixtures and that stall-detection or limit-based homing matches the manual you followed.

## Steps-per-mm

Calibrate X, Y, and Z using a dial indicator or known reference feature. Teaching Tech’s [calibration guide](https://teachingtechyt.github.io/calibration.html#xyzsteps) remains a good illustration of the process if your board’s UI differs from earlier manuals.

## Backlash and anti-backlash nuts

Indicate each axis for lost motion. Tighten **V2** auto-adjusting anti-backlash components per the mechanical manual until you reach repeatable motion without binding.

## Tram the spindle

Tram the spindle to the wasteboard or fixture using the tram aid parts called out in [Spindle mount and final sub-assemblies](110_table_and_spindle.md).

## Spindle/VFD sanity checks

Confirm your VFD parameter set matches the spindle nameplate. Set `M950` / spindle limits in RRF to **your** maximum safe RPM.

!!! tip
    Remove the collet and nut—or install a tight dowel—and stand clear the first time you command spindle rotation.

Check rotation direction with a marked gauge pin as described in the Milo 1.5 guide: if the wrap direction is wrong, swap any two **motor** leads at the VFD output as permitted by its manual.

## Lubrication

Regrease leadscrews, pack carriages, and lubricate linear guide blocks per the mechanical manual before making chips.

!!! success "Ready"
    Once these checks pass, perform an air-cut, then a light facing pass on a known material before pushing aggressive feeds. Share your first-chip photos on [Discord](https://discord.gg/ya4UUj7ax2) if you’d like feedback from the community.

---

[Previous: Assemble Electronics](140_assemble_electronics.md)
