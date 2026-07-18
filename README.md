# Majesty Gold HD - Wider Quest Map Edge Pan

A small Windows patcher for the Steam version of **Majesty Gold HD**.

It makes the quest selection map easier to pan by widening the edge-scroll zone. In the
unpatched game, the mouse has to sit in a very thin strip at the edge of the map before
the map starts moving.

After installing this patch, the edge pan zone is wider and more forgiving.

## Install

1. Close Majesty Gold HD.
2. Download and unzip the latest release.
3. Double-click `Install - Wider Quest Map Edge Pan.bat`.
4. Start Majesty Gold HD and open the quest selection screen.

If Windows blocks the patch because the game is under `Program Files`, right-click the
install BAT and choose **Run as administrator**.

## Uninstall

Close Majesty Gold HD, then double-click:

```text
Uninstall - Restore Quest Map Edge Pan.bat
```

The uninstaller restores only the bytes changed by this patch.

## Tuning

The default edge zone is `32` pixels. To try a different size, run the PowerShell script
directly:

```powershell
powershell.exe -ExecutionPolicy Bypass -File .\scripts\Install-QuestMapEdgePan.ps1 -EdgePixels 48
```

## Notes

This is a local file patch, not a Steam Workshop mod. Workshop mods load after Majesty
has already started, so this behavior change needs to be applied to the local install.

The patcher tries to find the Steam install automatically, including Steam library
folders on other drives. If it cannot find the game, run the PowerShell script manually
with a path:

```powershell
powershell.exe -ExecutionPolicy Bypass -File .\scripts\Install-QuestMapEdgePan.ps1 -GamePath "D:\SteamLibrary\steamapps\common\Majesty HD"
```

Click-and-drag panning is not included yet. The existing `MapDrag` preference appears
to apply to other map views, but the quest selection map does not appear to use that
same drag path.

## Build A Release Zip

Run:

```text
Create Release Zip.bat
```

The ZIP is written to `dist\`.
