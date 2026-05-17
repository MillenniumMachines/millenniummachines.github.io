# NeXT (MillenniumOS rewrite) — documentation in progress

!!! warning "Work in progress"
    This site section is being updated for **NeXT** (Next-Gen Extended Tooling), the RRF 3.6.x rewrite of MillenniumOS.

    The chapters below still describe the **legacy MillenniumOS** workflow (G8000 configuration wizard, older release layout, and links to the `MillenniumMachines/MillenniumOS` repository). Use them only if you are still on that stack.

## Where to get NeXT today

- **Source and releases:** [github.com/MillenniumMachines/NeXT](https://github.com/MillenniumMachines/NeXT) — pre-releases on branch `v0.6.0` (`v0.6.0-beta.N` tags).
- **Install:** Download the release ZIP from GitHub, install the DWC plugin, and deploy macros to `0:/sys/` per the NeXT README.
- **Configure:** Use the **Configuration** panel in the NeXT DWC plugin (replaces the old `G8000` wizard).
- **Migrate from MOS:** NeXT can import legacy `mos-*` settings into `nxt-user-vars.g` on first boot when MOS files or globals are detected.

## What is changing

| Legacy MillenniumOS | NeXT |
|---------------------|------|
| `mos.g` / `G8000` wizard | `nxt.g` / Configuration UI |
| `mos*` globals | `nxt*` globals |
| Peak-to-peak probe spread (older builds) | Strict consecutive-pair tolerance on 3 touches (`G6512`) |
| Fixed DWC/RRF version in manifest | `auto-major` compatibility in built plugin |

Updated installation, usage, and G-code chapters will land on this branch before the manual is published to the live site.
