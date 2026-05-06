# Install RepRapFirmware (RRF)

Milo / Miley V2 does not ship a single “board-in-base” wiring story. Firmware configuration depends on the **controller and expansion boards** you install through the [Universal Electronics Box (UEB)](https://github.com/MillenniumMachines/Universal-Electronics-Box) project.

## What to do next

1. Follow the UEB repository documentation to mount your Duet-family (or compatible) hardware, map motors, and bring up network access.
2. Load the **RRF configuration** that matches your kit (see releases or partner documentation such as **LDO** when applicable).
3. Cross-check pin names in `config.g` against the wiring diagram for your exact board—**pin names**, not raw MCU labels, are what RRF macros use.
4. Continue to [Assemble Electronics](140_assemble_electronics.md) if you still need mechanical steps inside the electronics enclosure, then run [Pre-Flight Checks](150_pre_flight_checks.md).

!!! warning
    Do **not** reuse Milo V1.5 `config.g` files verbatim. Motor directions, endstop routing, and spindle control differ between machine generations and between Milo and Miley variants.

---

[Previous: FMJ (V2)](120_fmj_assembly.md) | [Next: Assemble Electronics](140_assemble_electronics.md)
