# Device Configuration for Infinix GT 20 Pro (X6871)

The **Infinix GT 20 Pro** (codenamed `X6871` / `Infinix-X6871`) is a high-performance gaming smartphone from Infinix, powered by MediaTek Dimensity 8200 Ultimate.

```
#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-FileCopyrightText: Project Infinity-X
# SPDX-License-Identifier: Apache-2.0
#
```

---

## Device Specifications

| Feature | Details |
| :--- | :--- |
| **Chipset** | MediaTek MT6895 Dimensity 8200 Ultimate (4 nm) |
| **CPU** | Octa-core (1x 3.1 GHz Cortex-A78 & 3x 3.0 GHz Cortex-A78 & 4x 2.0 GHz Cortex-A55) |
| **GPU** | Mali-G610 MC6 |
| **Memory** | 8 GB / 12 GB LPDDR5X |
| **Storage** | 256 GB UFS 3.1 |
| **Display** | 6.78" FHD+ AMOLED, 144Hz, 1300 nits peak |
| **Battery** | 5000 mAh, 45W wired fast charging |
| **Rear Camera** | 108 MP (wide, OIS) + 2 MP (macro) + 2 MP (depth) |
| **Front Camera** | 32 MP (wide) |
| **Android Version** | Android 14 (Stock HiOS 14) / Android 15 (Infinity-X 4.0) |

---

## Build & Partition Architecture

- **ROM Target**: Project Infinity-X 4.0 (`ix4`, Android 15 / Platform SDK 37)
- **Filesystem Type**: Compressed **EROFS** (`lz4hc,9`) for all dynamic partitions (`system`, `vendor`, `product`, `system_ext`, `odm_dlkm`, `vendor_dlkm`).
- **Super Partition Size**: `9,126,805,504` bytes (~9.1 GB).
- **Kernel & Ramdisk**: GKI-compliant boot architecture with A/B slot support.

---

## Flashing Instructions

### 1. Boot to Fastboot Mode
```bash
adb reboot bootloader
```

### 2. Flash Boot and Vendor Boot Images
```bash
fastboot flash boot boot.img
fastboot flash vendor_boot vendor_boot.img
```

### 3. Boot to Recovery & Flash ROM
1. Select **Recovery Mode** from the fastboot menu.
2. In recovery, select **Factory reset / Wipe data**.
3. Select **Apply update** -> **Apply from ADB**:
```bash
adb sideload Project_Infinity-X-4.0-X6871-*-GAPPS-UNOFFICIAL.zip
```
4. Reboot system.
