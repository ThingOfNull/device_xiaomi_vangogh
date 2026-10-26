# vangogh device tree — Android 16 / 4.19 vendor kernel adaptation

Device tree for the Xiaomi Mi 10 Lite Zoom (codename **vangogh**, SM7250 /
Snapdragon 765G), adapted to run **LineageOS 23.2 (Android 16)** on the
**4.19 vendor kernel**.

## Branch

- `lineage-23.2-4.19` — Android 16 (LineageOS 23.2) + 4.19 vendor kernel.
- `main` mirrors it.

Related repositories:

- [device_xiaomi_sm7250-common](https://github.com/ThingOfNull/device_xiaomi_sm7250-common)
- [kernel_xiaomi_sm7250](https://github.com/ThingOfNull/kernel_xiaomi_sm7250) — branch `lineage-23.2-4.19`

## Changes for this adaptation

- Device makefiles updated for the LineageOS 23.2 / Android 16 build
  (`lineage_vangogh-bp4a-userdebug`, 64-bit-only userspace, vendor HALs from
  the 4.19 blobs).
- BoardConfig: 4.19 kernel integration (`kernel/xiaomi/sm7250`,
  `vangogh_419_defconfig`), vendor partition layout, recovery configuration.
- SystemUI overlay adjustments for the 4.19 display stack.
- Vendor extraction scripts keep the display calibration XMLs and patched DPPS
  blob needed by the vendor composer (see the common tree for details).

## Build

```bash
source build/envsetup.sh
lunch lineage_vangogh-bp4a-userdebug
mka bacon
```

See README.md for the device specification.
