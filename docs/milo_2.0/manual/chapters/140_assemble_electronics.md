# Assemble electronics

All modern Milo / Miley V2 wiring is centered on the **[Universal Electronics Box](https://github.com/MillenniumMachines/Universal-Electronics-Box)** (UEB) effort. That repository contains the panel layouts, DIN hardware, connectors, and step-by-step guidance for landing mains, VFD, and control electronics safely.

## Practical order of operations

1. **Build the UEB** per its manual (enclosure panels, strain relief, e-stop, and mains routing).
2. **Dress motor and sensor harnesses** from the machine into the cabinet following the drawings for your kit.
3. **Verify earth bonding and shield termination** exactly as documented—CNC noise and safety both depend on it.
4. Only after mechanical installation is complete should you **apply power** for the first time.

!!! danger
    Mains voltage, **VFD** terminals, and spindle drives can kill or start fires. If you are not qualified to work on line-voltage equipment, hire a licensed electrician.

When the enclosure is wired and RRF is flashed, continue with [Pre-Flight Checks](150_pre_flight_checks.md).

---

[Previous: Install RRF](130_install_rrf.md) | [Next: Pre-Flight Checks](150_pre_flight_checks.md)
