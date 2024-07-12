# MillenniumOS

## What and Why?

The "OS" stands for "Operations System" rather than "Operat*ing* System" - because MillenniumOS implements a system of high-level CNC operations on top of [RRF](https://www.reprapfirmware.org/) **3.5+**.

!!! note
    RRF is the firmware used as standard on all Millennium Machines. If you self-sourced using the reference bill of materials or bought a kit from LDO, you already have the hardware required to run RRF and MillenniumOS.

    If you are self-sourcing and want to use a different mainboard, ensure it has support for RepRapFirmware first. Otherwise, you will not be able to run MillenniumOS either.

MillenniumOS's objective is to build on the usability and configurability of RRF, adding functionality required for efficient and repeatable machining that you would otherwise have to write yourself if using vanilla RRF.

We hope that MillenniumOS provides the platform for novice machinists to make their first cuts confidently and safely - that said, MillenniumOS *is not specific to our machines* - it should be possible to use MillenniumOS out-of-the-box on any 3-axis, moving-table CNC machine with a single spindle that runs RRF **3.5+**, so long as the machine axes minima and maxima are in matching orientations.

!!! tip
    On machines that do not match the design or layout above, it should still be possible to use MillenniumOS with minimal changes - but corner and surface names may be in the wrong order since these are specific to the directions of the axes on the machine. However, these can be corrected with minimal impact.

MillenniumOS is multiple things:

* A gcode dialect used to communicate between your CAM package and RRF
* A suite of macros for RRF that implements the gcode dialect on your machine
* A set of post-processors, which output the gcode dialect from your CAM package ready to be uploaded into RRF

## Operations

MillenniumOS implements functionality to enable:

* Guided tool changes using tool descriptions and tool length probing.
* Work-piece probing and work offset changes.
* Displaying output from your CAM package as dialogs in RRF.
* Configuration via a Wizard process.
* Safe spindle control.
* Safe parking, pausing and resuming.
* Protected moves when used with a Touch Probe.

## Workflow

MillenniumOS is designed to bring more of a 3D-printer-like workflow to machining. When you run a print job, you generally don't do any setup work before hitting print (except turning the printer on). You hit print, and the gcode file runs through a set of steps to prepare the printer before starting the print.

MillenniumOS takes the same approach with milling, albeit with prompts to provide operator input at various points. When you run a MillenniumOS gcode file, you will be walked through setting up and probing the stock for your part before the job proceeds to cutting moves. You *CAN* set up things like WCS origins before hitting go, and MillenniumOS will allow you to continue with existing origins and settings. However, it may be easier for new operators to run processed gcode files directly to achieve their first cuts.

## Post-Processors

MillenniumOS provides post-processors for both **Fusion360** and **FreeCAD**. These post-processors are designed to make working with a Millennium Machine feel a bit more like using a 3D printer - that is, the generated gcode can walk the operator through work-piece probing, both manually and automatically, and tool changes.

## Features

MillenniumOS uses the concept of features to control additional functionality. Many of these features require extra hardware to function. The features available as of version `0.3.0` are the following:

* **Toolsetter** - disabled by default
* **Touch Probe** - disabled by default
* **Variable Spindle Speed Control** - enabled by default
* **Spindle Feedback** - disabled by default

If you don't have the hardware required for one or more of these features or choose to disable said features, MillenniumOS will fall back on other manual methods to achieve the same goal.

This allows us to use the same gcode dialect to control machines with any combination of enabled features.

Understandably, this may be hard to visualise, so here are some examples:

### Toolsetter and Touch Probe Disabled

You will be guided through manual work-piece probing when the machine needs to know the origin of a work-piece. Every time a tool is changed, you will go through a manual process to re-zero the origin in the Z-Axis, as the tool length will have changed.

You can do everything required for job setup via this process, but it will take a long time as each step will involve manual probing methods.

### Only Toolsetter Enabled

You will still be guided through manual work-piece probing until you need to change tools during the machining process. We will use the tool setter to calculate the relative length difference between the tools and compensate for this automatically.

This add-on feature saves time if your job contains multiple operations with tool changes and avoids recalculating the Z-Axis origin after changing tools.

### Only Touch Probe Enabled

You will be guided through an automated work-piece probing system, similar to the manual probing system, but you will use your touch probe for the actual probing moves. This speeds up the probing process *considerably*.

You will still have to re-probe the Z-Axis origin of the workpiece manually after every tool change because we have no way to calculate the relative length of the tools.

### Both Touch Probe and Toolsetter Enabled

You will have the best of both worlds. There will no longer be any need for manual probing routines. Aside from the manual steps you will take to position the touch probe at the start of a probing procedure and the process of changing the tools themselves, everything else will be automatic.

This saves you the most time and is the most accurate way to use MillenniumOS.

[Next Chapter: Installing MillenniumOS](./20_installation.md)

*[WCS]: Work Co-ordinate System
*[RRF]: RepRapFirmware
*[DWC]: Duet Web Control
*[VSSC]: Variable Spindle Speed Control
