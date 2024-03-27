# Installing MillenniumOS

!!! warning "Unreleased Software"
    MillenniumOS is currently not released publicly. We are managing the release with a small number of people who have built their machines both from the reference design and from the LDO kit, and are helping to test.

    We hope to release MillenniumOS soon but we must also bear in mind that this software will be used by machining novices, so it needs to be safe from the first click.


MillenniumOS for RRF is distributed as a **single Zip file** that contains everything needed to understand and support our custom functionality and gcode dialect.

## RRF Installation

!!! note
    If you installed one of our [RRF Configurations](https://github.com/MillenniumMachines/RRF-Configs/releases) that contains MillenniumOS, then you may not need to follow everything in this guide. If you start RRF and a MillenniumOS configuration wizard appears, then MillenniumOS is already installed and just needs to be [configured](#configuration)!.

### Download MillenniumOS Release

MillenniumOS releases can be found on the [MillenniumOS Releases](https://github.com/MillenniumMachines/MillenniumOS/releases) page. Select the `mos-release-vX.X.X...zip` file to download the latest release.

![Image showing example MillenniumOS release](../img/mos_install_step_0.png){: .shadow-dark }

---

### Upload MillenniumOS files to RepRapFirmware

Once the Zip file has been downloaded, you can simply upload it to DWC using the **"Files -> System"** tab. Click **"Upload System Files"** (at the top right of the list of files), select the Zip file you downloaded previously (`mos-release-vX.X.X...zip`) and click OK.

![File selection process for uploading to DWC](../img/mos_install_step_1.png){: .shadow-dark }

---

Each of the files from the Zip will be uploaded individually. You can see the list of files being uploaded and there will be a notification when the whole Zip file has been uploaded. Once the upload is complete, click **"Close""*.

![Uploaded file list in DWC](../img/mos_install_step_2.png){: .shadow-dark }

---

### Load MillenniumOS on startup

!!! tip
    If you are using a supported [RRF Configuration](#rrf-installation) then you can skip to [Configuration](#configuration) as MillenniumOS will be loaded automatically. All you have to do is reboot after uploading the Zip file.

MillenniumOS needs to be loaded on every bootup of your mainboard.

To achieve this, we need to add or uncomment a configuration line in your `config.g` file. Navigate to the **"Files -> System"** tab, and click on the `config.g` file to edit it.

Scroll to the bottom, and make sure that the last line in the file looks exactly like this:

```gcode
M98 P"mos.g"
```

If the line is commented - `; M98 P"mos.g"` or `(M98 P"mos.g")` - then remove the comment characters `;` or `(`..`)` from the line to load MillenniumOS on startup.

Once done, click the Save button in the top right.

!!! warning
    As you have changed `config.g`, you may be prompted to **restart** or **reload** the RRF configuration. Pick the **restart** option.

    If you are not prompted, please type `M999` in the **"Control -> Console"** tab and hit enter to restart the mainboard.
    MillenniumOS will not load properly until the machine is restarted.

### Configuration

After restarting, you will be prompted to configure MillenniumOS. This configuration process is guided, so simply read and click through the dialog boxes as they appear.

![Start of MillenniumOS Configuration Wizard](../img/mos_install_step_4.png){: .shadow-dark }

---

#### Configuration Wizard

When prompted to provide information or perform an action, please read the information *carefully* - the configuration wizard will trigger movement of the machine where necessary, but you will *always* be warned before this happens.

If you experience any connection issues during the wizard, you can usually reload your browser tab to trigger the next dialog.

If you cancel the wizard, or receive an error, you can re-run the wizard using `G8000`. Once the wizard is complete your machine will reboot to reload the new settings, at which point MillenniumOS is ready for use.

!!! note
    MillenniumOS now supports resuming the wizard if it was not completed. Settings are saved to an intermediate file which is loaded when the wizard is started, and you will be prompted to continue where you left off, or restart.

You may re-run the wizard at any time to reconfigure one or more features. If you click the 'Update' button when asked if you want to reset the configuration, then you can pick which sections of the configuration you would like to reconfigure, and all other sections of the existing configuration will be left as-is.

!!! tip
    Even if you have a Touch Probe and a Toolsetter, the Wizard will ask you to take some manual measurements using a Datum tool. This is necessary to enable tool offset compensation when using the Toolsetter and the Touch Probe together.

    In short - we cannot probe the length of the Touch Probe with the Toolsetter (or the other way round for that matter), because the Touch Probe and Toolsetter require different activation pressures - one will always activate before the other, and this will never be accurate enough to correctly offset different length tools.

    The manual measurement calculates a distance between a surface we _can_ probe (using the Touch Probe at the start of every job) and the activation point of the Toolsetter, using a tool whose length does not change between the measurements.

    This gives us a relative distance which can be used to calculate the expected activation point of the Toolsetter - when changing tools, the tool _offset_ is the difference between the expected activation point and the actual point the Toolsetter was activated at.

    If you'd like to understand more of how this works, the macro files themselves are quite well commented and easy to read - look at `G8000`, `G37`, `tpre.g` and `tpost.g`.

!!! warning
    If you receive any syntax errors or other errors during the configuration process, please report these on the [MillenniumOS](https://github.com/MillenniumMachines/MillenniumOS) repository as an issue or ask for assistance on our Discord.

---

#### User Variables

When the configuration wizard is complete, it writes the settings to the `mos-user-vars.g` file. This file can be edited by hand but remember, it will be overwritten the next time the configuration wizard is run, so your settings will be lost if you choose to `Reset` these during the wizard.

If you are comfortable editing the configuration file by hand then this can be used for small changes, but you must remember to reload MillenniumOS after editing (use the `Misc/Reload` macro or run `M9999`).

!!! warning
    Editing the `mos-user-vars.g` file directly is unsupported as it is easy to trigger a syntax error. Only use this method if you are familiar with the RRF meta gcode language and are able to debug syntax issues yourself.

---

## Post-Processor Installation

After configuring MillenniumOS, the final step is to install the correct post-processor for your CAD/CAM software, so it can produce the right gcode for MillenniumOS.

Fusion360 is supported with a `.cps` post-processor. This may work in other Autodesk products but usage outside of Fusion360 is completely untested and out of scope for this documentation.

FreeCAD is supported with a `.py` post-processor.

### Fusion360

#### Download the Post-Processor

Download the `millennium-os-<version>-post-f360.cps` file from the release matching your installed MillenniumOS version.

![Example MillenniumOS release](../img/mos_install_step_0.png){: .shadow-dark }

---

#### Download the Machine Definition

You should also download the Fusion360 machine definition as this allows you to configure the post-processor on a per-operation basis for certain settings. These are released alongside the post-processor and RRF Zip file.

You will need to download the file that matches your machine specification - currently these are generated for the following specifications:

* Standard: `milo-v1.5-std-v...mch`
    * X=0 to 335mm
    * Y=0 to 208mm
    * Z=0 to -120mm

This can be used with a machine of the standard working area, with either a 60mm or 120mm clearance. This includes the LDO kit.

!!! note
    Refer to the image in the [Post-Processor Installation](#post-processor-installation) section for how these appear on each release.

---

#### Create an NC Program

Switch to the **"MANUFACTURE"** workbench in Fusion360.

![Location of the MANUFACTURE workbench in F360](../img/mos_install_step_5.png){: .shadow }

---

Under the **"Milling"** tab in the top bar, click the **"NC Program"** icon (the one with a G at the top of a document).

![Location of the NC Program button in F360](../img/mos_install_step_6.png){: .shadow }

---

#### Import the post-processor

Click the **"Folder"** icon to the right of Post (**"Select post from the library"**).

![Location of the folder icon in F360](../img/mos_install_step_7.png){: .shadow }

---

Hit the **"Import"** button (Document with Arrow on the left, facing right).

![Location of the Import button in F360](../img/mos_install_step_8.png){: .shadow }

---

Select the `millennium-os-...-f360.cps` file from your filesystem and click "Open" in the bottom right of the window.

![Select the CPS file on your filesystem](../img/mos_install_step_9.png){: .shadow }

---

Make sure the newly created "MillenniumOS" post entry is selected in the Post Library and click Select in the bottom right of the window.

![Select the post-processor entry in the Post Library in F360](../img/mos_install_step_10.png){: .shadow }

---

You may now click "OK" on the "NC Program" window to return to the main view.

#### Create a Setup

To install the machine definition, we must first create a **"Setup"**. Click on the **"Setup"** icon under the **"Milling"** tab in the top bar.

![Create a setup in F360](../img/mos_install_step_11.png){: .shadow }

---

Click **"Select"** on the **"Setup"** tab under the **"Machine"** heading:

![Select a machine](../img/mos_install_step_12.png){: .shadow }

---

#### Import the machine definition

Click on the **"Import"** button to open the machine definition selection dialog:

![Import a machine](../img/mos_install_step_13.png){: .shadow }

---

Click **"Select from my computer"** in the bottom left hand corner of the selection window, and then pick the `.mch` file you downloaded previously.

![Select from my computer](../img/mos_install_step_14.png){: .shadow }

---

!!! note
    The machine file and post-processor are configured and named specifically so that they reference each other. You should load the machine definition after the post-processor, allowing it to find the post-processor file. When successfully linked, you should see a `Post` line under the machine definition indicating that the Machine and post-processor are linked.

![Machine and Post linked](../img/mos_install_step_15.png){:.shadow }

---

#### Configure the post-processor

Configure the post-processor in the **"Post properties"** section of the **"NC Program"** window to your liking. The default settings should work fine unless you have more advanced needs.

![Configuring the post-processor in the Post properties section of F360](../img/mos_install_step_16.png){: .shadow }

---

### FreeCAD

#### Download the Post-Processor

Download the `millennium_os_<version>_post.py` file from the release matching your installed MillenniumOS version.

![Example MillenniumOS release](../img/mos_install_step_0.png){: .shadow-dark }

---

#### Install the Post-Processor

You will need to copy this file into your FreeCAD Macro directory.

You can find this directory by going to **Macro -> Macros** from the menu bar, and looking at the *User macros location* in the bottom corner of the window.

Once the file is placed there, it will be selectable as the Processor under every *Job* instance from the *Path* workbench.

---

You're now ready to add some toolpaths and then run the post to generate MillenniumOS flavoured output gcode. These steps are not MillenniumOS specific, and are therefore outside of the scope of this documentation.

If you would like to understand how MillenniumOS works in practice and how best to use it, please proceed to the next chapter.

[Next Chapter: Using MillenniumOS](./30_usage.md)

*[WCS]: Work Co-ordinate System
*[RRF]: RepRapFirmware
*[DWC]: Duet Web Control
