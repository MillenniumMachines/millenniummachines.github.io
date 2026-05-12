# Milo / Miley V2 – Frequently asked questions

Official mechanical build, RRF, electronics, and pre-flight steps: **[MiloV2-Manual.pdf](https://github.com/MillenniumMachines/Milo-V2.0/blob/main/Manual/MiloV2-Manual.pdf)** in the [Milo-V2.0](https://github.com/MillenniumMachines/Milo-V2.0) repository.

### What is the difference between Milo V2 and Miley V2?

Both share the same **Y** and **Z** assembly. **Milo** uses a **moving table** in **X**; **Miley** keeps the **X axis fixed** and moves the work differently on that axis. See machine travel diagrams in the PDF **Introduction**. The same manual covers both, with **Milo only** / **Miley only** callouts where steps diverge.

### What are the machine travels?

The manual lists **660.4 mm** and **698.2 mm** as shared Y/Z travel references for both variants. **Diagram grid (mm):**

| Row | Milo | Miley |
| --- | --- | --- |
| 1 | 348 | 308 |
| 2 | 1026 | 658 |

Travel diagrams and full context are in the PDF **Introduction**. Always verify against your CAD configuration and any options (leadscrew vs ballscrew, table length, etc.).

### Leadscrew or ballscrew?

Both Milo and Miley work with **TR8×8 leadscrews** or **SFK0802 ballscrews**. **TR8×8 is the recommended default** for desktop builds: with 8 mm pitch the motors do not need to spin as fast for practical feed rates. Ballscrews improve efficiency and backlash but their shorter lead forces much higher stepper RPM for the same speed, which can limit torque and acceleration unless you use servos or accept lighter cuts. See the **Introduction** in the PDF for the full discussion.

### Where are the electronics documented?

The [Milo V2 repository](https://github.com/MillenniumMachines/Milo-V2.0) does **not** bundle electronics. Follow the [Universal Electronics Box](https://github.com/MillenniumMachines/Universal-Electronics-Box) project for boards, wiring, and enclosure layout. **Install RRF**, **assemble electronics**, and **pre-flight checks** for V2 are in **MiloV2-Manual.pdf** after the mechanical sections.

### What materials can I machine?

As with any desktop CNC, this depends on tooling, feeds and speeds, and how carefully the machine was assembled. The design targets aluminium and softer materials routinely; steel is possible with realistic expectations and conservative cuts.

### What about the Full Metal Jacket (FMJ) V2?

Optional **FMJ V2** plates appear in the Z-axis sections of the manual. Follow the **FMJ (V2)** chapter in **MiloV2-Manual.pdf**.

### I found a mistake in the docs — how do I report it?

Open an issue or pull request on [millenniummachines.github.io](https://github.com/MillenniumMachines/millenniummachines.github.io) for site content, or on [Milo-V2.0](https://github.com/MillenniumMachines/Milo-V2.0) for CAD / manual source.

---

For historical context on the MiniMill lineage, see the [Milo 1.5 FAQ](../milo_1.5/faq.md).
