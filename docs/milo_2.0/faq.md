# Milo / Miley V2 – Frequently asked questions

### What is the difference between Milo V2 and Miley V2?

Both share the same **Y** and **Z** assembly. **Milo** uses a **moving table** in **X**; **Miley** keeps the **X axis fixed** and moves the work differently on that axis (see machine travel diagrams in the [Introduction](./manual/chapters/20_introduction.md)). The same mechanical manual covers both, with **Milo only** / **Miley only** callouts where steps diverge.

### What are the machine travels?

Approximate travel numbers from the assembly manual export are summarized under **Machine travels** in the [Introduction](./manual/chapters/20_introduction.md). Always verify against your CAD configuration and any options (leadscrew vs ballscrew, table length, etc.).

### Leadscrew or ballscrew?

TR8×8 leadscrews are the **recommended** default for desktop-class builds. Ballscrews (e.g. SFK0802) are supported but demand much higher motor RPM for the same feed rate; see the discussion in the [Introduction](./manual/chapters/20_introduction.md).

### Where are the electronics documented?

The [Milo V2 repository](https://github.com/MillenniumMachines/Milo-V2.0) does **not** bundle electronics. Follow the [Universal Electronics Box](https://github.com/MillenniumMachines/Universal-Electronics-Box) project for boards, wiring, and enclosure layout, then return here for [RRF](./manual/chapters/130_install_rrf.md) and [pre-flight](./manual/chapters/150_pre_flight_checks.md) guidance framed for V2.

### What materials can I machine?

As with any desktop CNC, this depends on tooling, feeds and speeds, and how carefully the machine was assembled. The design targets aluminium and softer materials routinely; steel is possible with realistic expectations and conservative cuts.

### What about the Full Metal Jacket (FMJ) V2?

Optional **FMJ V2** plates appear in the Z-axis sections of the manual. See [FMJ (V2)](./manual/chapters/120_fmj_assembly.md) for a concise pointer into those steps.

### I found a mistake in the docs — how do I report it?

Open an issue or pull request on [millenniummachines.github.io](https://github.com/MillenniumMachines/millenniummachines.github.io) for site content, or on [Milo-V2.0](https://github.com/MillenniumMachines/Milo-V2.0) for CAD / manual source.

---

For historical context on the MiniMill lineage, see the [Milo 1.5 FAQ](../milo_1.5/faq.md).
