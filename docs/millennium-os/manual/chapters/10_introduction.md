# MillenniumOS

## What and Why?

The "OS" stands for "Operations System" rather than "Operat*ing* System" - because MillenniumOS is an addon that implements a system of high-level CNC operations on top of RRF **3.5+**.

The aim of MillenniumOS is to build on the usability and configurability of RRF, adding functionality required for efficient and repeatable machining that you would otherwise have to write yourself if using vanilla RRF.

We hope that MillenniumOS makes Millennium Machines the simplest route for novice machinists to make their first cuts confidently and safely - that said, MillenniumOS *is not entirely specific to our machines* - it should be possible to use MillenniumOS out-of-the-box on any 3-axis, moving-table CNC machine with a single spindle that runs RRF **3.5+**, as long as the axis minima and maxima are in the same directions.

MillenniumOS is multiple things:

* A gcode dialect, used to communicate between your CAM package and RRF,
* An RRF addon, that implements the gcode dialect on your machine, and
* A set of post-processors, which output the gcode dialect from your CAM package, ready to be uploaded into RRF.

## Operations

MillenniumOS implements operations to enable:

* Guided tool changes using tool descriptions, and tool length probing.
* Work-piece probing and work offset changes.
* Displaying output from your CAM package as dialogs in RRF.
* Configuration via a Wizard process.
* Safe spindle control.
* Safe parking, pausing and resuming.
* Protected moves when used with a Touch Probe.


## Post-Processors

MillenniumOS provides post-processors for both **Fusion360** and **FreeCAD**. These post-processors are designed to make working with a Millennium Machine feel a bit more like using a 3D printer - that is, the generated gcode can walk the operator through work-piece probing, both manually and automatically, and tool changes.

## Features

MillenniumOS uses the concept of features to enable and disable functionality. These include:

* **Toolsetter** - disabled by default
* **Touch Probe** - disabled by default
* **Variable Spindle Speed Control** - enabled by default
* **Spindle Feedback** - not implemented yet

Some of these features, like the Toolsetter and Touch Probe, require hardware support.

If you don't have the hardware for one more of these features, MillenniumOS will fall back to guided, but manual processes which will allow you to achieve the same thing.

This allows us to use the same gcode dialect for machines which have any combination of feature support.

This may be hard to visualise, so here are some examples:

### Toolsetter and Touch Probe Disabled

You will be guided through manual work-piece probing when the machine needs to know the origin of a work-piece. Every time a tool is changed, you will be guided through a manual process to re-zero the origin in the Z axis, as the tool length will have changed.

You will be able to do everything, but it will take a while as this will involve manual probing at every step.

### Only Toolsetter Enabled

You will still be guided through manual work-piece probing, but when you change tools during the actual machining process, we will use the toolsetter to calculate the relative length difference between the tools and compensate for this automatically.

This will save some time if your code contains multiple operations with tool changes.

### Only Touch Probe Enabled

You will be guided through an automated work-piece probing system, which is very similar to the manual probing system but will use your touch probe for the actual probing moves. This will speed up the probing process *considerably*.

You will still have to re-probe the work-piece manually after every tool change as we have no way to calculate the relative length of the tools.

### Both Touch Probe and Toolsetter Enabled

You will have the best of both worlds - there will no longer be any need for manual probing routines, and aside from the manual steps you take to position the touch probe at the start of a probing procedure, and changing the tools themselves, everything else will be automated.

This will save you the most amount of time and is the most accurate way of using MillenniumOS.

[Next Chapter: Installing MillenniumOS](./20_installation.md)

*[WCS]: Work Co-ordinate System
*[RRF]: RepRapFirmware
*[DWC]: Duet Web Control
*[VSSC]: Variable Spindle Speed Control
