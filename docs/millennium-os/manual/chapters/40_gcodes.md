# Millennium Machines GCode Flavour

!!! warning
    This document is a work in progress and may lag behind changes made in MillenniumOS itself. To understand the latest available macros and how these should be called when using them directly, please refer to the code in the [GitHub Repository](https://github.com/MillenniumMachines/MillenniumOS).

## Misc

### `G27` - PARK

```gcode
; Usage
G27 [Zn]
```

Used to park the spindle in a safe location, by default it will move the spindle to the top of the Z-Axis, trigger an `M5.9` (stop the spindle and wait for spin-down), and then move the table to the centre of the X-Axis and at the front of the Y-Axis (towards the operator).

If called with the `Z1` argument, it will only raise and stop the spindle - the table location will not be changed.

Parking is used widely throughout probing and tool changing to move the spindle to a known starting location which is safe for lateral moves. CNC Firmwares do not always provide a generic park function (including RRF), because this can be machine-specific, so we implement our own.

### `G37` - PROBE TOOL LENGTH

```gcode
; Usage
G37
```

When using multiple milling tools, we must compensate for length differences between the tools. G37 can be used to (re-)calculate the length of the current tool relative to a reference surface or the previous tool.

`G37` is used widely by CNC mills to probe tool lengths but is not implemented by RRF, so again we implement our own.

### `G37.1` - PROBE Z SURFACE WITH CURRENT TOOL

```gcode
; Usage
G37.1
```

When there is no toolsetter available, it is necessary to re-zero the Z-Axis origin after changing tools - because the new tool will never be installed with the same length as the previous one.

After a tool change, this command will be called automatically instead of `G37` if no toolsetter is available, and will walk the operator through manual re-zeroing of the Z-Axis origin.

This has some caveats, in that if you machine off the surface that is used as your zero point then re-zeroing will be problematic - the operator must account for this in their CAM profile, to make sure that their Z origin makes sense.

### `M3000` - PROMPT OPERATOR WITH CONFIRMABLE DIALOG

```gcode
; Usage
M3000 R"..." S"..."

; Example message
M3000 R"Operator Action Required" S"Flip the part around the X-Axis and continue!"
```

Takes both `R` (title) and `S` (message) string parameters, and will display an RRF dialog box. If the machine is currently processing a file and not paused, the dialog box will contain Continue, Pause, and Cancel options. If M3000 is called while the machine is not processing a file, only the Continue and Cancel options will be shown. This can be used by post-processors to display messages to the operator.

!!! warning
    This macro is currently unable to handle pauses and resumes correctly. That means if you click the **Pause** button on a popup created by this macro, and then resume, you will see the same popup again. You need to click Continue to proceed with the job.

### `M4005` - CHECK MILLENNIUMOS VERSION

```gcode
; Usage
M4005 V"..."

; Example, abort if the loaded MillenniumOS version is not v0.3.0
M4005 V"..."
```

The MillenniumOS post-processor and macros are tightly coupled across versions. This command aborts an active job if the version of MillenniumOS running in RRF does not match the version of the post-processor that generated the job.

### `M5010` - RESET STORED WCS DETAILS

```gcode
; Usage
M5010 [Wnn] [Rnn]

; Reset Work Offset 0 centre position and radius.
M5010 W0 R5
```

Reset the stored details for a given WCS, or the current WCS if not specified.

Different fields are used for different types of probing operations, and we want to reset these values before running a probing cycle, so if previous values existed, but the probing cycle failed we would not end up using the previously valid values.

`M5010` uses a bitmask-style integer field to select which WCS detail fields to reset for a particular WCS. These are:

```gcode
; Center     = 1
; Corner     = 2
; Radius     = 4
; Surface    = 8
; Dimensions = 16
; Rotation   = 32
```

You can add the number of each field type together and pass it to the `R` parameter to reset multiple fields - the default value is `63`, which resets all fields.

### `M5011` - APPLY ROTATION COMPENSATION

```gcode
; Usage
M5011 [Wnn]

; Apply rotation compensation using workplace number 2 values
M5011 W2
```

Look up stored rotation values from the given workplace number or the current workplace number if none is specified. If a value exists, the operator will be prompted to apply rotation compensation using the inbuilt `G68` command.

### `M6515` - CHECK CO-ORDINATES ARE WITHIN MACHINE LIMITS

```gcode
; Usage
M6515 [Xnnn] [Ynnn] [Znnn]
```

Accepts at least one of X, Y, and Z coordinates to check that they are within the axes limits of the machine and will trigger an abort if they are outside the work envelope. This macro is also internally used to ensure we do not try to move outside the machine's limits.

### `G6550` - PROTECTED MOVE

```gcode
; Usage
G6550 [Innn|Inull] [Xnnn] [Ynnn] [Znnn]
```

Takes at least one of X, Y, and Z coordinates as the target location, and an optional probe ID (I). If the probe ID is given, it will attempt to move to the target location while watching the specified probe for activation due to collision. If a probe ID is not provided, this move acts like a G1 move to the target, implementing an unprotected move at the manual probing speed. This macro is called by probing macros to avoid damaging any probe due to accidental collisions.

### `M7601` - PRINT WORKPLACE DETAILS

```gcode
; Usage
M7601 [Wnn]
```

Output any stored probing details for the current workplace or the workplace given by offset `W`. It will only output probed values that are not null.

### `G8000` - RUN CONFIGURATION WIZARD

```gcode
; Usage
G8000
```

Triggered when installing MillenniumOS for the first time, and can be called later to reconfigure MillenniumOS. This macro runs through a modal-driven configuration wizard that prompts the user for all settings required to run MillenniumOS properly.

### `M8001` - DETECT PROBE BY STATUS CHANGE

```gcode
; Usage
M8001 [Dnnn] [Wnnn]
```

Iterates through all configured probes every `D` milliseconds (default 100) checking to see if their values have changed. This can be used to identify the right probe via user input when configuring MillenniumOS. Will wait for a maximum of `W` seconds (default 30).

### `M8002` - WAIT FOR PROBE STATUS CHANGE BY ID

```gcode
; Usage
M8002 Knn

; Wait for probe with ID 1 to change state
M8002 K1
```

Wait for the probe given by ID `K` to change state. This is used to detect the installation of a touch probe or similar where the circuit or device may not be NC, to avert situations where the operator has installed the probe but forgotten to plug it in.

### `M8003` - LIST CHANGED GP INPUT PINS SINCE LAST CALL

```gcode
; Usage
M8003

; Save the current state of GP input pins
M8003

; Store list of changed pins in global.mosGPV
M8003

; Update list of changed pins
M8003
```

Stores a list of the general purpose input pins whose states have changed since the last call to `M8003`. This is used to identify Spindle Feedback pins during the configuration wizard process.

### `M8004` - WAIT FOR GP INPUT PIN STATUS CHANGE BY ID

```gcode
M8004 Knn

; Wait for general purpose input 0 to change the state
M8004 K0
```

Waits for a general-purpose input pin to change state. The level of the pin is unimportant, just that the state changes. This code is used by `M3.9` and `M5.9` when spindle feedback is enabled to wait until the VFD reports that it has reached the target speed.

### `M9999` - RELOAD MILLENNIUMOS

```gcode
; Usage
M999
```

Triggers a reload of MillenniumOS using `daemon.g`. This can be used when developing or updating values from `mos-user-vars.g` but is _not_ suitable for use when a new version of MillenniumOS has been installed - you _MUST_ restart!

---

## Probing

### META

#### `G6600` - PROBE WORKPIECE

```gcode
; Usage
G6600 [Wnn]
```

Called by the post-processor to indicate that the workpiece should be probed to set WCS origin, if the `W` parameter is set then this will be the WCS offset that will be zeroed, rather than asking the operator.

If the post knows what _type_ of workpiece probe should be executed, it can call the specific probing operation directly (e.g. `G6500`, `G6501` etc) and then set the WCS using `G10`. Calling `G6600` will prompt the operator to select a probing methodology based on their knowledge of the workpiece.

### Two Axis

#### `G6500` - BORE

```gcode
; Usage
G6500 [Wnn]
```

The **Bore** probing macro prompts the user for approximate diameter, overtravel, approximate center position, and probe depth.
Executes `G6500.1` with the relevant parameters to run the actual probe.

If the `W` parameter is set then this will be the WCS offset that will be zeroed. If no parameter is set then no WCS will be zeroed.

##### `G6500.1` - BORE - EXECUTE

```gcode
; Usage
G6500.1 [Wnn] Jnnn Knnn Lnnn Hnnn [Onnn] [R0]
```

Calculates the center of a bore and its radius, by running 3 probes outwards from the chosen starting position towards the edge of the bore. The overtravel is added to the radius of the bore and this sets the distance moved from the
center point in each of the 3 directions before the probe cycle will error if it does not trigger.

Parameters `J`, `K`, and `L` represent the starting point of the probe in the `X`, `Y`, and `Z` axes. `H` specifies the approximate diameter of the bore, `O` specifies the overtravel distance, and when specified, `R0` suppresses reporting of the probe results.

`W` represents the WCS offset to set the origin on if passed.

#### `G6501` - BOSS

```gcode
; Usage
G6501 [Wnn]
```

The **Boss** probing macro prompts the user for approximate diameter, clearance, overtravel, approximate center position, and probe depth.
Executes `G6501.1` with the relevant parameters to run the actual probe.

If the `W` parameter is set then this will be the WCS offset that will be zeroed. If no parameter is set then no WCS will be zeroed.

##### `G6501.1` - BOSS - EXECUTE

```gcode
; Usage
G6501.1 [Wnn] Jnnn Knnn Lnnn Hnnn [Tnnn] [Onnn] [R0]
```

Calculates the center of a boss and its radius, by running 3 probes inwards towards the operator-chosen center of the bore. The overtravel is subtracted from the radius of the boss to identify the target location of each probe, and the clearance is added to the radius of the boss to identify the starting locations.

Parameters `J`, `K`, and `L` represent the starting point of the probe in the `X`, `Y`, and `Z` axes. `H` specifies the approximate diameter of the bore, `O` specifies the overtravel distance, `T` the clearance distance, and when specified, `R0` suppresses reporting of the probe results.

`W` represents the WCS offset to set the origin on if passed.


#### `G6502` - RECTANGLE POCKET

```gcode
; Usage
G6502 [Wnn]
```

The **Rectangle Pocket** probing macro prompts the user for an approximate width (X), length (Y), overtravel and clearance, an approximate center position, and probe depth. Executes `G6502.1` with the relevant parameters to run the actual probe.

If the `W` parameter is set then this will be the WCS offset that will be zeroed. If no parameter is set then no WCS will be zeroed.

##### `G6502.1` - RECTANGLE POCKET - EXECUTE

```gcode
; Usage
G6502.1 [Wnn] Jnnn Knnn Lnnn Hnnn Innn [Tnnn] [Onnn] [R0]
```

Calculates the center of a rectangle pocket, its surface angles, rotation angle (about the X-axis), and its dimensions based on 8 different probes.
Using the provided width, height, clearance, and starting location, we probe outwards from inside the expected edges of each surface by the clearance distance. We probe each surface twice to get a surface angle and validate that the pocket itself is both rectangular and how far it is rotated from the X-axis.

Parameters `J`, `K`, and `L` represent the starting point of the probe in the `X`, `Y`, and `Z` axes. `H` and `I` specify the approximate X and Y dimensions of the pocket, `O` specifies the overtravel distance, `T` the clearance distance, and when specified, `R0` suppresses reporting of the probe results.

`W` represents the WCS offset to set the origin on if passed.

#### `G6503` - RECTANGLE BLOCK

```gcode
; Usage
G6503 [Wnn]
```

The **Rectangle Block** probing macro prompts the user for an approximate width (X), length (Y), overtravel and clearance, approximate center position, and probe depth. Executes `G6503.1` with the relevant parameters to run the actual probe.

If the `W` parameter is set then this will be the WCS offset that will be zeroed. If no parameter is set then no WCS will be zeroed.

##### `G6503.1` - RECTANGLE BLOCK - EXECUTE

```gcode
; Usage
G6503.1 [Wnn] Jnnn Knnn Lnnn Hnnn Innn [Tnnn] [Onnn] [R0]
```

Calculates the center of a rectangle block, its surface angles, rotation angle (about the X-axis), and its dimensions based on 8 different probes.
Using the provided width, height, clearance, and starting location, we probe inwards from the expected edges of each surface by the clearance distance. We probe each surface twice to get a surface angle and validate that the block itself is both rectangular and how far it is rotated from the X-axis.

Parameters `J`, `K`, and `L` represent the starting point of the probe in the `X`, `Y`, and `Z` axes. `H` and `I` specify the approximate X and Y dimensions of the block, `O` specifies the overtravel distance, `T` the clearance distance, and when specified, `R0` suppresses reporting of the probe results.

`W` represents the WCS offset to set the origin on if passed.

#### `G6504` - WEB X

Not implemented.

#### `G6505` - POCKET X

Not implemented.

#### `G6506` - WEB Y

Not implemented.

#### `G6507` - POCKET Y

Not implemented.

#### `G6508` - OUTSIDE CORNER

```gcode
; Usage
G6508 [Wnn]
```

The **Outside Corner** probing macro prompts the user for an approximate width (X) and length (Y) of the 2 surfaces that make up the corner, a clearance and overtravel distance, a probing depth, a starting location, and the corner that we want to probe (front left, back right, etc). Executes `G6508.1` with the relevant parameters to run the actual probe.

If the `W` parameter is set then this will be the WCS offset that will be zeroed. If no parameter is set then no WCS will be zeroed.

##### `G6508.1` - OUTSIDE CORNER - EXECUTE

```gcode
; Usage
G6508.1 [Wnn] Jnnn Knnn Lnnn Nn [Qn] [Hnnn] [Innn] [Tnnn] [Onnn] [R0]
```

Calculates the corner position of a square corner on a workpiece in X and Y, as well as calculating the rotation angle and corner angle of the item. Using the provided width, height, clearance, overtravel, and starting location, we move outwards along each surface forming the corner, probing at 2 locations on each surface to find their angles, and then calculating where these surfaces intersect at the relevant corner.

Parameters `J`, `K`, and `L` represent the starting point of the probe in the `X`, `Y`, and `Z` axes. `N` indicates the corner number to probe, where the Front Left corner is `0` and the number increases anti-clockwise, with the Back Left corner at `3`.

`Q` identifies the mode - with `Q1`, quick mode is enabled, and no `H` or `I` parameter needs to be passed. Only a single probe point will be taken on each surface of the corner.

With `Q0` (the default), you must also pass `H` and `I` - which specify the approximate X and Y dimensions of the block in millimeters.

In both modes, you can specify `O`, the overtravel distance, and `T`, the clearance distance.

`R0` suppresses reporting of the probe results, and `W` represents the WCS offset to set the origin on if passed.

#### `G6509` - INSIDE CORNER

Not implemented.

### Single Axis

#### `G6510` - SINGLE SURFACE

```gcode
; Usage
G6510 [Wnn]
```

The **Single Surface** probing macro prompts the user for a starting location, overtravel distance, which surface to probe, a maximum probing distance, and for X and Y surfaces, a probing depth below the starting location. It can probe the Z height of a workpiece, or a single surface on X or Y if the operator knows these are aligned with the machine axes. This macro only probes a single point so it cannot calculate surface angles.

If the `W` parameter is set then this will be the WCS offset that will be zeroed. If no parameter is set then no WCS will be zeroed.

##### `G6510.1` - SINGLE SURFACE - EXECUTE

```gcode
; Usage
G6510.1 [Wnn] Jnnn Knnn Lnnn Hn Innn [Onnn]
```

Calculate the X, Y, or Z coordinates of a surface using the provided starting location, surface number, probing distance, and depth.

Parameters `J`, `K`, and `L` represent the starting point of the probe in the `X`, `Y`, and `Z` axes. `H` specifies the axis to probe on, starting at 0 for Left, 1 for Right, 2 for Front, 3 for Back, and 4 for Top. `I` specifies the distance to probe toward the surface, and `O` specifies the overtravel distance. `R0` suppresses the reporting of the probe results.

`W` represents the WCS offset to set the origin on if passed.

#### `G6511` - PROBE REFERENCE SURFACE

```gcode
; Usage
G6511
```

Probes the touch probe reference surface in Z, and sets the touch probe activation point. This will be called automatically when changing to the touch probe with the feature enabled.

### Three Axis

#### `G6520` - VISE CORNER

```gcode
; Usage
G6520 [Wnn]
```

The **Vice Corner** probing macro combines **Outside Corner** and **Single Surface (Z)** macros to zero all 3 axes of a WCS in a single probing operation. This macro prompts the user for the required parameters for the **Outside Corner** macro, as well as a starting location. It calls the macros in sequence, probing the Z surface first before moving outwards and probing each X and Y surface that forms the corner.

If the `W` parameter is set then this will be the WCS offset that will be zeroed. If no parameter is set then no WCS will be zeroed.

##### `G6520.1` - VISE CORNER - EXECUTE

```gcode
; Usage
G6520.1 [Wnn] Jnnn Knnn Lnnn Nn Pnnn [Qn] [Hnnn] [Innn] [Tnnn] [Onnn] [R0]
```

Executes a Vise Corner probe using the parameters gathered by the operator. Runs a Z probe first, then each corner probe after, and sets the WCS origin of all 3 axes at once.

Parameters `J`, `K`, and `L` represent the starting point of the probe in the `X`, `Y`, and `Z` axes. `N` indicates the corner number to probe, where the Front Left corner is `0` and the number increases anti-clockwise, with the Back Left corner at `3`.

`P` indicates the depth to probe the corner surfaces relative to the probed top surface.

`Q` identifies the mode - with `Q1`, quick mode is enabled, and no `H` or `I` parameter needs to be passed. Only a single probe point will be taken on each surface of the corner.

With `Q0` (the default), you must also pass `H` and `I` - which specify the approximate X and Y dimensions of the block in millimeters.

In both modes, you can specify `O`, the overtravel distance, and `T`, the clearance distance.

`R0` suppresses reporting of the probe results, and `W` represents the WCS offset to set the origin on if passed.

### Base

#### `G6512` - PROBE

```gcode
; Usage
G6512 Lnnn [Inn] [Xnnn] [Ynnn] [Znnn] [Jnnn] [Knnn]
```

`G6512` is the underlying probing macro called by the higher-level probing cycle macros. It must be passed a target position in at least one axis (`X`, `Y`, and `Z`), and a start position in at least the `Z` axes (`L`). It may also be passed a start position in the `X` or `Y` axes. The unspecified axes for start and target positions will default to the current machine coordinates.

If `I` is not specified, the macro will trigger a guided manual probing cycle similar to the RRF jogging window, but only move towards or away from the target position. When complete, `G6512` will update the probe position in the `mosPCX`, `mosPCY`, and `mosPCZ` global variables, adjusting for tool radius and deflection.

#### `G6512.1` - AUTOMATED PROBE

```gcode
; Usage
G6512.1 Inn [Xnnn] [Ynnn] [Znnn] [Rnn]
```

Probe a single point using an installed and connected touch probe. Target coordinates are specified using `X`, `Y`, `Z`, and `R` and can be used to override the number of retries rather than using the default value for the probe.

Probe position will be reported in the `mosPCX`, `mosPCY`, and `mosPCZ` global variables without compensation for tool radius or deflection. Probe variance will be stored in the `mosPVX`, `mosPVY`, and `mosPVZ` variables.

!!! warning
    **DO NOT** call this macro directly - use `G6512`.

#### `G6512.2` - MANUAL PROBE

```gcode
; Usage
G6512.1 [Xnnn] [Ynnn] [Znnn]
```

Probe a single point using a manual jogging process. Target coordinates are specified using `X`, `Y`, and `Z`.

Probe position will be reported in the `mosPCX`, `mosPCY`, and `mosPCZ` global variables without compensation for tool radius or deflection. The probe variance will be zero.

!!! warning
    **DO NOT** call this macro directly - use `G6512`.

---

## Drilling

### `G73` - DRILL CYCLE - PECK DRILLING WITH PARTIAL RETRACT

```gcode
; Usage
G73 [Fnnn] [Rnnn] [Qnnn] [Xnnn] [Ynnn] [Znnn]

; At X=10 and Y=10, peck 1mm at a time at 500mm/min,
; from Z=-5 to Z=-10, retracting by 1mm after each peck.
; We then retract to Z=-5.
G73 F500 R-5 Q1 Z-10 X10 Y10
```

Runs a **Peck Drilling with Partial Retract** cycle. **WARNING**: - this may not clear enough chips. You are likely better off using a drill cycle that retracts fully.

The cycle will move to the `R` height at the current location, then to the `XY` location if given.

It will then move downwards towards `Z` at the given feed rate (or the previously used rate) by the peck distance `Q`.

It will then retract by the `Q` distance, then proceed downwards by `2xQ`, drilling a successively deeper hole with short retraction moves.

After it has reached the target depth `Z` it will retract back to the given `R` height and return.

### `G80` - DRILL CYCLE - CANCEL

```gcode
; Usage
G80
```

Resets all variables stored about the current canned cycle. After the first call to a canned cycle macro containing drilling details, subsequent calls only need the XY location of the holes. By calling `G80`, these stored details can be reset so that stored details _MUST_ be provided by the next canned drilling cycle call.

### `G81` - DRILL CANNED CYCLE - FULL DEPTH

```gcode
; Usage
G80 [Fnnn] [Rnnn] [Xnnn] [Ynnn] [Znnn]

; At X=10 and Y=10, drill down at 500mm/min,
; from Z=-5 to Z=-10, in one movement.
; We then retract to Z=-5.
G81 F500 R-5 Z-10 X10 Y10
```

Runs a **Full-Depth** drilling cycle with _NO_ retraction. **WARNING**: - unless drilling very shallow holes, use a drilling cycle with retraction.

The cycle will move to the `R` height at the current location, then to the `XY` location if given.

It will then move downwards towards `Z` at the given feed rate (or the previously used rate), reaching the `Z` location in one move. It will then retract to the `R` height and return.

### `G83` DRILL CANNED CYCLE - PECK DRILLING WITH FULL RETRACT

```gcode
; Usage
G83 [Fnnn] [Rnnn] [Qnnn] [Xnnn] [Ynnn] [Znnn]

; At X=10 and Y=10, peck 1mm at a time at 500mm/min,
; from Z=-5 to Z=-10, retracting to Z=-5 after each peck.
G83 F500 R-5 Q1 Z-10 X10 Y10
```

Working in the same manner as `G73`, this cycle retracts to the initial Z position after each peck rather than retracting by the peck distance.

This allows for easier chip clearing during the drilling cycle. If in doubt, use this cycle type for canned drilling as it is the least likely to break your drill if chip clearing is an issue.

---

## Tool Management

### `M4000` - DEFINE TOOL

```gcode
; Usage
M4000 Pnn Rnn S"..." [Xnn] [Ynn]

; Define tool index 5 as a 30mm diameter Face Mill
M4000 P5 R15.0 S"30mm Face Mill 3 flute"

; Define tool index 49 as a probe with a 1mm tip radius and deflection values for X and Y
M4000 P49 R1 S"Touch Probe" X0.05 Y0.01
```

We need to store additional details about tools that RRF is not currently able to accommodate natively - this includes tool radius (`R`) and deflection values for probes (`X` and `Y`). Tool index is set using `P` and description is set using `S".."`. M4000` stores these custom values that allow us to use them while configuring RRF with the relevant tool details using `M563`.

### `M4001` - FORGET TOOL

```gcode
; Usage
M4001 Pnn

; Forget tool 19
M4001 P19
```

Reset the tool at index `Pnn` to defaults.

### `T<N>` - EXECUTE TOOL CHANGE

```gcode
; Usage
Tnn

; Change to tool 41
T41
```

This macro is built into RRF, using the `t{free,pre,post}.g` files. If the target tool number is specified, these files are executed in order. The operator is prompted to change to the correct tool and if this tool is a probe tool, will be asked to verify that the tool is connected by triggering it manually before proceeding.

---

## Coolant Control

### `M7.1` - ENABLE AIR BLAST

```gcode
; Usage
M7.1
```

Enables the general-purpose output associated with air-blast, set by the operator during the configuration wizard.

### `M7` - ENABLE MIST

```gcode
; Usage
M7
```

Enables the general-purpose output associated with unpressurised coolant, set by the operator during the configuration wizard. If air blast (`M7.1`) is not already activated, it will be before activating the coolant output.

### `M8` - ENABLE FLOOD

```gcode
; Usage
M8
```

For those mad enough to build flood coolant into a DIY CNC machine, `M8` enables pressurised flood coolant on the general-purpose output set by the operator during the configuration wizard.

### `M9` - CONTROL ALL COOLANTS

```gcode
; Usage
M9 [Rnn]

; Stop all coolants
M9

; Restore all coolants to their previously saved states
M9 R1
```

By default, this turns off any enabled coolant outputs. If called with the `R1` parameter, coolant output states will be restored to those saved during the most recent pause. This macro is called during the resume process to re-enable coolant.

---

## Spindle Control

### Spindle Start / Stop

#### `M3.9` - START SPINDLE AND WAIT

```gcode
; Usage
M3.9 [Snnnnn] [Pnn] [Dnnn]

; Start spindle assigned to the current tool at 8000 RPM
M3.9 S8000
```

Wrapping the inbuilt `M3` command, `M3.9` starts the spindle in the clockwise direction at a particular speed and waits for it to accelerate to the target speed.

If spindle feedback is configured, this command waits for a general-purpose input to change state before returning.

If spindle feedback is not configured, a static delay is used to make sure the spindle is up to speed before returning. The static speed used for this is timed by the operator during the wizard process, and modified based on the percentage speed change being requested. So if the RPM change is 50% of the maximum RPM of the spindle, then the delay will be 50% of the operator-recorded delay.

Additionally, if Expert Mode is disabled, then this macro will pop up an operator confirmation when the spindle is going to accelerate from 0 rpm.

#### `M5.9` - STOP SPINDLE AND WAIT

```gcode
; Usage
M5.9 [Dnnn]
```

Wrapping the inbuilt `M5` command, `M5.9` stops all spindles and waits for them to decelerate. Like `M3.9`, this either uses a pin state-change if spindle feedback is configured, or a static delay if not, to make sure we do not proceed until the spindle is stationary.

### Variable Spindle Speed Control

Variable Spindle Speed Control (VSSC) constantly adjusts the rotational speed of the spindle up and down over a set range to avoid resonance between the tool and the workpiece building up at constant RPMs. It can provide a quality boost in situations where resonances would otherwise occur.

#### `M7000` - ENABLE VSSC

```gcode
; Usage
M7000 Pnn Vnn

; Enable VSSC with a period of 2000 ms and a variance of 100 RPM
M7000 P2000 V100
```

Enable Variable Spindle Speed Control. The `P` and `V` parameters must be specified, and these control the period (in milliseconds) and variance (in RPM) of the VSSC function.

#### `M7001` - DISABLE VSSC

```gcode
; Usage
M7001
```

Disable Variable Spindle Speed Control

---

## Debugging

### `M7600` - OUTPUT ALL KNOWN VARIABLES

```gcode
; Usage
M7600 [Dnn]
```

Sometimes it is necessary to debug MillenniumOS or RRF, and this macro allows outputting the macro variables that MillenniumOS uses in a manner that can be attached to tickets or discord messages to aid debugging. Call it with the `D1` parameter to enable additional RRF object model output that can help to debug the odder issues.
