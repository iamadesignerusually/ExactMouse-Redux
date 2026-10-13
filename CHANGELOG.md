# Changelog

All notable changes to this project are documented here.
The format follows [Keep a Changelog](https://keepachangelog.com/en/1.1.0/), and the project uses [Semantic Versioning](https://semver.org/).

## [3.8.0] – 2026-10-13

### Changed
- **New license: ExactMouse Redux is now proprietary software.** © Maximilian Dahl, all rights reserved. The app stays free to use, and Pro features stay free during Early Access. Copying, redistributing, modifying and reverse engineering are not allowed. See the new bilingual [license agreement](LICENSE).
- Versions up to and including 3.7.5 were published under the MIT License. That license continues to apply to copies of those versions obtained at the time.
- The source code is no longer published. This repository now holds the project page, legal texts, changelog, installer and the downloads. Download links, `install.sh` and the update button in the app keep working as before.
- About, Help, LEGAL.md and the READMEs have been updated. "Source on GitHub" is now "Project on GitHub".

### Removed
- `install.sh --from-source` and the build-from-source instructions.

## [3.7.5] – 2026-10-13

### Changed
- **Legal texts reworked** in LEGAL.md, both READMEs, About, the Help and the website:
  - The SteelSeries ExactMouse Tool is now named clearly as the **inspiration** for this project, with credit to SteelSeries for the original idea.
  - Wording that could suggest an official "successor" or "replacement" is gone. The project is now described as an independent *alternative*, and *not a SteelSeries product*.
  - New sections explain the name ("Redux" = "brought back") and privacy (no personal data; the only network connection is to GitHub for updates).
  - "Non-commercial" was removed.

## [3.7.4] – 2026-10-13

### Changed
- **New Pro tab** in the style of Raycast's Pro screen, always dark. It has a warm orange-pink glow behind the app icon, "Pro" in gradient lettering, and a softly glowing "Early Access active" button with a feedback link. Six glass cards (buttons & macros, app profiles & game mode, per-device settings, scrolling, battery time & warnings, live diagnostics) lift slightly on hover. Below them are the always-free features and the license field. The breathing glow stays still when "Reduce motion" is on.

### Fixed
- `--update-now` (automation) also quits the running menu bar instance, so the new version really starts. Updating with the button in the app or with install.sh was not affected.

## [3.7.3] – 2026-10-13

### Changed
- **Sleeker menu, now made of native macOS menu items.** Same content as before: main device on top, mode and device sections, coloured status icons, the active mode marked, and battery levels. Row height, padding, font and highlight now come from macOS itself, exactly like system menus and tools such as Raycast. Each row is a single title with one short grey line below it.
- Mode explanations are one line in the menu. The full text appears as a tooltip and in the Help.
- "Active" and battery percentages are native badges on the right.
- Settings, About and Quit have small system icons. Settings and Quit show ⌘, and ⌘Q.

### Fixed
- The README still said the trackpad option was in the menu. It is under Settings → Mouse.

## [3.7.2] – 2026-10-13

### Changed
- **Menu header:** the icon on the left now shows *what* the main device is: a mouse, a trackpad, or a **gaming mouse** (a mouse with a controller badge, for gaming brands and models such as Naga, G502 or Viper). A small **live battery** sits right in front of the percentage. Its fill follows the charge, it adapts to the text colour, and it turns red at 15 % or less.

### Fixed
- **Blank space at the bottom of the menu.** The menu was rebuilt while open after the background Bluetooth battery refresh, and macOS grows an open menu but never shrinks it. An open menu is no longer rebuilt. New values appear the next time it opens, and the menu bar icon still updates right away.
- **Statistics:** each mouse event no longer copies the whole day record. It is updated in place.
- **Button mapping:** the event tap now listens to keyboard events **only while a macro is being recorded**, not whenever bindings exist. That is less overhead, and typing can never be slowed down by the app.
- Chart width warning in the Statistics tab.

## [3.7.1] – 2026-10-13

### Fixed
- **Menu:** all rows could show as highlighted at once. Highlighting now follows the menu's own highlight (mouse and keyboard) instead of separate hover areas.
- **Sensitivity calculator:** the DPI and sensitivity fields no longer squeeze their labels ("Emp-find-lich-keit"). Each field is its own row.

### Added
- Help topics for the game mode, automation URLs and the sensitivity calculator.

## [3.7.0] – 2026-10-13

### Added
- **Automatic game mode (Pro):** games are recognised by their app category, Steam game folders, CrossOver, Whisky, Wine or the Game Porting Toolkit. While one is in front, the mode switches to Always On with its own game speed. Explicit app profiles win.
- **Low battery warnings (Pro):** a macOS notification at 20 %, 10 % and 5 %, with the estimated remaining time, once per level, reset after charging.
- **URL scheme for automation:** `exactmouse-redux://mode/always-on|on|off|toggle`, `…/speed/raw|1.6`, `…/game-mode/on|off`, `…/settings/<tab>`. These work from Shortcuts ("Open URL"), Focus automations, Raycast, Alfred and Stream Deck, and *Settings → Apps* lists them with copy buttons.
- **Logitech over HID++:** set the DPI right in the mouse from the details window, and read the battery (Unified Battery / Battery Status) when Bluetooth reports none. This needs *Input Monitoring* and has not been tested on a device yet.
- **Sensitivity calculator (Pro):** cm and inches per 360°, eDPI, and conversion between CS2/Source, Valorant, Apex Legends, Overwatch 2 and Call of Duty.

## [3.6.0] – 2026-10-13

### Added
- **Statistics tab:** pointer distance today, this month, this year and all time, with fun facts ("19.3× the height of the Eiffel Tower"), the distance over the last 30 days as a chart, and clicks per button (left, right, middle, buttons 4/5 … and the MMO side keys) with percentages.
- **"When do you use your mouse?" (Pro):** a heat map by weekday and hour, plus insights: most active hour, most clicks, most movement, most scrolling.
- **"What do you do when?" (Pro):** the share of moving, clicking and scrolling for each hour of the day.
- **Most used bindings & macros (Pro).**
- **Privacy:** only counts are stored, with no keystrokes and no contents. Everything stays local in `~/Library/Application Support/ExactMouse Redux/statistics.json`. Collecting can be switched off and the statistics reset.
- `--render-stats-demo <file>` diagnostic flag, which uses in-memory demo data and saves nothing.

## [3.5.0] – 2026-10-13

### Added
- **Buttons tab (Pro).** Assign any extra mouse button (buttons 3–32): click *Assign button…*, then press the button you want. A suggestion adds back/forward in one click. Each button can do: back, forward, Mission Control, app windows, show desktop, Space left or right, left/right/middle click, media keys, any keyboard shortcut (recorded), open an app, a macro, or nothing. A per-app version of a binding wins over the "all apps" one.
- **MMO side keys (Beta).** Mice like the Razer Naga send their 12 side keys as 1–9, 0, - and =. Redux opens that keyboard interface exclusively and maps the 12 slots; unassigned slots keep typing their number. This needs *Input Monitoring*. It has not been tested on a real Naga yet, so feedback is welcome.
- **Macros.** Steps can be a shortcut, text, a pause or a click, or you can **record** them with timing. Playback can be once, repeat while held, or toggle on/off. Macros can be assigned to any button or side key.
- Button mapping and macros need *Accessibility* permission.

## [3.4.0] – 2026-10-13

### Changed
- **Menu redesign.** Every row shares one left edge, so the checkmark gap is gone and *All Devices…* aligns with the device icons. The active mode shows a subtle green **"✓ Active"** pill on the right. Row heights follow the real text wrapping. Hover, click and keyboard work as before.
- **Batteries in macOS style:** the menu bar battery is horizontal, with a thin outline, nub and fill in the menu bar text colour, and turns red only at 15 % or less. The menu header uses Apple's own battery symbol, with the percentage as text. *Settings → Mouse* shows a live preview next to the switch.
- **Four icon styles, modelled on polished Mac utilities:** *Colour* (default), *Monochrome* (filled / outline / struck through), *Pointer* (dot / ring / dimmed) and a compact *1:1* badge. All of them follow the light or dark menu bar.

### Removed
- The "Original (SteelSeries)" icon style and every use of SteelSeries artwork. The About window and settings show the app's own icon. A saved "original" style falls back to *Colour*.

### Fixed
- Keyboards that also claim mouse conformance through their driver, such as the Keychron K3, are no longer treated as mice. The app now checks the primary usage.

## [3.3.0] – 2026-10-13

### Changed
- **General tab** now shows the app itself: logo, name, version and build, updates (automatic check, *Check for Updates…*, *What's New*), start at login, and the project links (source on GitHub, *Report a problem*, license) with the author and a short legal note.
- **New "Mouse" tab** with everything about the pointer, in separate sections: **Mode** (the three modes), **Speed & trackpads**, and **Appearance** (icon style, battery in the menu bar).

## [3.2.0] – 2026-10-13

### Changed
- **The menu is reduced to the essentials:** the main device at the top, the three modes, the connected devices with **All Devices…** (opens Settings → Devices), then *Settings…*, *About* and *Quit*. Speed, trackpads, start at login, updates and help moved to the settings window.
- **Settings window fixed:** it has a fixed size of 660 × 620 pt. Content adapts and scrolls instead of being clipped at the edges. It also **opens instantly**: the window is built off-screen 2 s after launch, because SwiftUI's cold start took about 0.5 s on the first open.

### Added
- **Help tab with search** in the settings window: 11 topics, from modes, speed, trackpads, devices, app profiles, scrolling, battery and DPI to permissions, updates and privacy, plus a link to the full help page.
- `--time-settings` diagnostic flag, which measures how long each settings pane takes to build.

## [3.1.0] – 2026-10-13

### Added
- **Settings window** (menu → *Settings…*, ⌘,) with toolbar tabs: General, Devices, Apps, Scrolling, Diagnostics and Pro. Pro features carry a **PRO** badge.
- **Devices (Pro):** each mouse can follow the general setting, use its own speed, or be excluded so it keeps the macOS acceleration. Devices are recognized by vendor ID, product ID and name, also after reconnecting. Saved devices that are not connected are listed too.
- **App profiles (Pro):** mode and speed switch automatically while a chosen app is in front, and the menu header shows the active profile. *On* does not step back while a profile is active. Verified: a profile set to "Off" switched the MX Vertical to the macOS acceleration and back.
- **Scrolling (Pro):** turn off mouse wheel acceleration (verified: "Scroll acceleration (disabled)", restored on switch-off), and reverse the mouse scroll direction independently of the trackpad. Reversing needs Accessibility permission.
- **Diagnostics (Pro)** overview with a shortcut to Mouse Details, and a **Pro** tab. Pro is free for everyone during **Early Access**; purchasing comes later, and the license field is already prepared.
- Setting to hide the battery in the menu bar.
- `--render-settings <dir>` diagnostic flag.

## [3.0.1] – 2026-10-13

### Changed
- VoiceOver reads the speed slider by its name and announces its value ("1:1 (raw)", "1.6×").
- First release delivered through the built-in updater (tested from 3.0.0 to 3.0.1).

## [3.0.0] – 2026-10-13

### Changed
- **Renamed to "ExactMouse Redux".** "SteelSeries" is no longer part of the app name. The app is now `ExactMouse Redux.app`. The installer and the updater remove the old `SteelSeries ExactMouse Tool Redux.app` automatically. Settings, bundle ID and permissions are kept, and the login item is registered again for the new name if it was on.

### Added
- **Speed without acceleration.** A slider below the modes sets a linear pointer speed from 0.3× to 2.6×. The middle position is the classic raw 1:1. Speeds other than 1:1 use macOS's own linear scaling mode: the pointer filter logs "Using linear scaling", verified with a Logitech MX Vertical. There is never an acceleration curve. This fixes the most common problem with 1:1, that the pointer is too slow on large screens.
- **Built-in updates.** The app checks GitHub Releases once a day (can be switched off under *Options*). It shows "Update to X available" in the menu, downloads the ZIP, verifies its SHA-256 checksum and code signature, swaps the app and restarts it. There is also *Check for Updates…* in the menu. No data is sent: it is only a request to the GitHub API.
- Diagnostic flags `--render-speed` and `--update-now`.

## [2.10.0] – 2026-10-13

### Added
- **Estimated remaining battery time** for wireless mice, for example "about 12 days left". Mice only report a percentage, so Redux records the level over time and fits a line through the readings since the last charge. The estimate appears once there is enough data (at least 6 hours and a drop of 2 points). A rise of 3 or more points counts as a charge and resets the curve. The estimate is shown in the menu header, in the menu bar tooltip and in the device details. Until then, the details say "Remaining time is being determined".

### Changed
- The battery in the menu header now **stands upright**: the fill rises from the bottom, the number sits inside, and it turns red at 15 % or less.

## [2.9.1] – 2026-10-13

### Changed
- **Menu header:** a real horizontal battery on the left replaces the mouse icon for wireless devices. Its green fill shrinks with the charge level, it turns red at 15 % or less, and the percentage is shown inside, iPhone style. Wired mice show a **USB cable** icon, mice on a wireless receiver without a battery value show a radio icon, and trackpads show the trackpad icon. The 🔋 emoji is gone from the header text.
- The device list writes the battery as "Battery 82 %" instead of using an emoji.
- `--render-battery-badges <file>` diagnostic flag.

## [2.9.0] – 2026-10-13

### Added
- **The main input device now sits at the top of the menu.** The header shows the main device (a wireless mouse first, then any mouse, then the trackpad) with everything important at a glance: name, vendor, type and connection, battery, polling rate (once measured), whether acceleration is off, and the active mode. Example: "MX Vertical · Logitech · Mouse · Bluetooth · 🔋 100 % · Acceleration off · 1:1 · Always On". Clicking it opens the device details.
- Vendor names for common mouse makers (Logitech, SteelSeries, Razer, Apple, Corsair, Microsoft, ROCCAT, ASUS, Lenovo, Dell, HP, Endgame Gear).
- The READMEs have prominent **Download for macOS** and **Install via Terminal** buttons, plus version and download badges.

### Changed
- The menu bar battery has no percentage any more (it is in the tooltip). It is slightly wider and shorter than the mouse (8 × 11 pt instead of 7 × 14 pt) and centred on the mouse.

## [2.8.2] – 2026-10-13

### Changed
- *Include trackpads* now has the same plain style as *Start on Log On*: just a checkmark and the title, with no icon or subtitle. The explanation moved to the tooltip.

## [2.8.1] – 2026-10-13

### Changed
- The menu bar battery is redesigned. It now stands **upright to the left of the mouse icon**, matched to the mouse glyph: the same height (14 pt), a proportional width (7 pt), the same stroke weight and the same centre line. A small percentage sits to its left. It still turns red at 15 % or less, and it also fits the original SteelSeries icon style.

## [2.8.0] – 2026-10-13

### Added
- **Battery gauge in the menu bar.** If a wireless mouse is connected and reports its battery level, a small battery symbol (10 × 5 pt) appears to the right of the icon, vertically centred, with the fill level. It follows the light or dark menu bar and turns red at 15 % or less. With several mice, the lowest level is shown. The tooltip and VoiceOver read out the percentage.
- The battery level is refreshed every 5 minutes, when a mouse connects or disconnects, and when the menu opens. This costs less than 0.2 % CPU on average.
- `--render-statusbar <file>` diagnostic flag, which renders the menu bar icons with sample battery levels.

## [2.7.0] – 2026-10-13

### Added
- **Read the configured DPI directly from Logitech mice** through the documented HID++ 2.0 protocol (feature 0x2201 "Adjustable DPI"), over Bluetooth or a direct USB connection. The details window shows "Configured DPI: 1000 DPI · read from the mouse", plus the supported range or steps. It re-reads every 10 s, so presses of the DPI button show up. The access is read-only and never changes the mouse. It needs *Input Monitoring*. Mice behind a Unifying or Bolt receiver are not supported yet.
- `--read-dpi <file>` diagnostic flag, started with `open -a … --args`, so the app's own permissions apply.

### Note
- For other brands, including SteelSeries, macOS has no way to read the DPI step, so the ruler measurement is still the way to get it.

## [2.6.3] – 2026-10-13

### Fixed
- **DPI measurement and polling rate stayed empty for some mice**, for example Bluetooth mice such as the Logitech MX Vertical. HID services report the 32-bit LocationID sign-extended (`-1297935108`), while HID devices report it unsigned (`2997032188`). The measured reports were therefore filed under a different device. Both sides now use the unsigned 32-bit value.

### Changed
- The details window asks for the *Input Monitoring* permission with the system prompt and starts measuring as soon as it is granted, without reopening the window.
- The measure button now works by pressing and holding it with the mouse as well as with the space bar.
- The device picker in the details window is labelled "Device", since it also lists trackpads.

## [2.6.2] – 2026-10-13

### Added
- The menu shows the battery level of Bluetooth mice and trackpads that report it only through Bluetooth, for example the Logitech MX Vertical. The value is read in the background when the menu opens and cached for 60 s.

### Changed
- If no mouse is connected, the menu now says that Bluetooth mice wake up and connect when you move them.
- When macOS reports no Bluetooth signal strength (common for Bluetooth LE mice), the details window says so and points to the measured link quality.
- Battery values with a non-breaking space ("100 %") are parsed reliably.

### Verified
- Bluetooth LE mouse (Logitech MX Vertical): on reconnect, macOS applies the disabled acceleration immediately ("Pointer acceleration (disabled)"), and Redux confirms it on the device right after.

## [2.6.1] – 2026-10-13

### Changed
- *Include trackpads* moved out of the mode list into a separate **Options** section, together with *Start on Log On*.

## [2.6.0] – 2026-10-13

### Added
- **Trackpad support.** The built-in trackpad and the Magic Trackpad now follow all three modes and move 1:1. This is on by default and can be switched off with *Include trackpads* in the menu, which restores the trackpad's own speed curve. The original trackpad value is stored and restored in *Off*. *Always On* re-enforces it, and *On* steps back if System Settings changes it.
- Trackpad details show whether acceleration is off, with a note that the tracking speed slider has no effect while acceleration is off.
- `--status` also prints the trackpad value.

### Technical
- macOS 27 rejects `HIDTrackpadAcceleration` through `IOHIDEventSystemClient`, so it is written with the legacy parameter API as the raw value `-65536`. `IOHIDSetAccelerationWithKey` would clamp `-1` to `0`. This was verified on a MacBook trackpad: the pointer filter reports `Pointer acceleration (disabled)`.

## [2.5.0] – 2026-10-12

### Added
- Trackpad detection for the built-in trackpad and the Magic Trackpad. The menu and the details window show trackpad information instead of mouse values: tracking speed, tap to click, Force Click, three-finger drag, battery and Bluetooth signal, plus a shortcut to the Trackpad settings. A clear note says that ExactMouse does not change trackpads.
- Diagnostic flags `--dump-menu` (prints the menu as text) and `--render-details … live` (renders the details window with the real devices).

### Changed
- Menu order: the mode is now at the top and the device list below. The device section is called "Devices" when a trackpad is listed, and the details entry adapts to the connected hardware.

## [2.4.0] – 2026-10-12

### Changed
- Icon style is now chosen in the About window with radio buttons, each with a small preview of the menu bar icons and the logo. The menu no longer has an icon style entry.

### Performance
- Live polling statistics are computed on demand, about 10 times per second, instead of on every mouse report, using a ring buffer that needs no reallocation. With an 8000 Hz mouse and the details window open, CPU use drops from about one full core to about 0.1 %. With a 1000 Hz mouse it drops from 2.7 % to 0.03 %.
- Device names are cached instead of being looked up for every report.
- Bluetooth signal and battery are refreshed every 15 s instead of every 2 s, because each refresh costs about 0.5 s of `system_profiler` time.
- The menu is rebuilt on device changes only while it is open.

## [2.3.1] – 2026-10-12

### Added
- The icon style (New / Original) can now also be switched in the About window, kept in sync with the menu. The logo and the menu bar icon change immediately.

## [2.3.0] – 2026-10-12

### Added
- *Icon style* menu: **New** (default) or **Original (SteelSeries)**. The original logo and menu bar icons are loaded at runtime from an original tool installed on the user's Mac and cached locally. They are never bundled.
- FAQ in the READMEs and a GitHub Pages site, so the project can be found when searching for the SteelSeries ExactMouse Tool.

### Changed
- The repository is renamed to **ExactMouse-Redux**. Old links redirect automatically.
- `build.sh --original-artwork` is no longer needed, because the look is chosen inside the app.

## [2.2.1] – 2026-10-12

### Added
- Permanent download link for the newest version: `releases/latest/download/ExactMouseRedux.dmg` (and `.zip`).
- Download button and release badges in the README.

## [2.2.0] – 2026-10-12

### Added
- Ready-to-install downloads: every `vX.Y.Z` tag builds the universal app on GitHub Actions and attaches a DMG, a ZIP and SHA-256 checksums to the release.
- One-line installer (`install.sh`) with checksum check, `--version`, `--from-source`, `--uninstall` and `--purge`.
- Optional Developer ID signing and notarization in the release workflow, used automatically when the secrets are configured.
- `build.sh` accepts `SIGN_IDENTITY`. `scripts/package.sh` creates the DMG and ZIP and refuses to package builds that contain SteelSeries artwork.

### Changed
- Both READMEs have step-by-step install instructions, including how to open an app that is not notarized.

## [2.1.1] – 2026-10-12

### Changed
- The About window shows its links (GitHub profile, source code, full license text) as pill buttons.

## [2.1.0] – 2026-10-12

### Added
- New About window with the version, build number and commit, plus collapsible *Legal notice* and *License* sections.
- `--original-artwork` build option: a local build can show the SteelSeries logo and the original menu bar icons, taken from the original tool installed on that Mac. The artwork is cached locally, labelled as SteelSeries property, never part of the repository, and for personal use only.
- Versioning: a `VERSION` file, the build number and commit hash added at build time, the `--version` command line flag, this changelog and `vX.Y.Z` tags.

### Changed
- Legal texts now state precisely that the *source code* of the project contains no SteelSeries code or artwork.
- `--original-icons` is now an alias of `--original-artwork`.

## [2.0.0] – 2026-10-12

First release of the open-source successor, *SteelSeries ExactMouse Tool Redux*.

### Added
- Native universal app for Apple Silicon and Intel, running on macOS 14.4 up to macOS 27.
- The three modes of the original: *Always On*, *On* and *Off*, with 5 s enforcement and compatible preference keys. Settings of the original tool are imported.
- "No acceleration" is applied both globally and to each mouse, and re-applied when a mouse connects and when the Mac wakes.
- Menu with an explanation for each mode, a live status line and the list of connected mice.
- Mouse details window: live polling rate, link stability, Bluetooth signal in plain words, battery level and DPI measurement.
- English and German interface and help.
- Login item through `SMAppService`.
- Legal notice (LEGAL.md) and MIT license.

[3.7.2]: https://github.com/iamadesignerusually/ExactMouse-Redux/compare/v3.7.1...v3.7.2
[3.7.1]: https://github.com/iamadesignerusually/ExactMouse-Redux/compare/v3.7.0...v3.7.1
[3.7.0]: https://github.com/iamadesignerusually/ExactMouse-Redux/compare/v3.6.0...v3.7.0
[3.6.0]: https://github.com/iamadesignerusually/ExactMouse-Redux/compare/v3.5.0...v3.6.0
[3.5.0]: https://github.com/iamadesignerusually/ExactMouse-Redux/compare/v3.4.0...v3.5.0
[3.4.0]: https://github.com/iamadesignerusually/ExactMouse-Redux/compare/v3.3.0...v3.4.0
[3.3.0]: https://github.com/iamadesignerusually/ExactMouse-Redux/compare/v3.2.0...v3.3.0
[3.2.0]: https://github.com/iamadesignerusually/ExactMouse-Redux/compare/v3.1.0...v3.2.0
[3.1.0]: https://github.com/iamadesignerusually/ExactMouse-Redux/compare/v3.0.1...v3.1.0
[3.0.1]: https://github.com/iamadesignerusually/ExactMouse-Redux/compare/v3.0.0...v3.0.1
[3.0.0]: https://github.com/iamadesignerusually/ExactMouse-Redux/compare/v2.10.0...v3.0.0
[2.10.0]: https://github.com/iamadesignerusually/ExactMouse-Redux/compare/v2.9.1...v2.10.0
[2.9.1]: https://github.com/iamadesignerusually/ExactMouse-Redux/compare/v2.9.0...v2.9.1
[2.9.0]: https://github.com/iamadesignerusually/ExactMouse-Redux/compare/v2.8.2...v2.9.0
[2.8.2]: https://github.com/iamadesignerusually/ExactMouse-Redux/compare/v2.8.1...v2.8.2
[2.8.1]: https://github.com/iamadesignerusually/ExactMouse-Redux/compare/v2.8.0...v2.8.1
[2.8.0]: https://github.com/iamadesignerusually/ExactMouse-Redux/compare/v2.7.0...v2.8.0
[2.7.0]: https://github.com/iamadesignerusually/ExactMouse-Redux/compare/v2.6.3...v2.7.0
[2.6.3]: https://github.com/iamadesignerusually/ExactMouse-Redux/compare/v2.6.2...v2.6.3
[2.6.2]: https://github.com/iamadesignerusually/ExactMouse-Redux/compare/v2.6.1...v2.6.2
[2.6.1]: https://github.com/iamadesignerusually/ExactMouse-Redux/compare/v2.6.0...v2.6.1
[2.6.0]: https://github.com/iamadesignerusually/ExactMouse-Redux/compare/v2.5.0...v2.6.0
[2.5.0]: https://github.com/iamadesignerusually/ExactMouse-Redux/compare/v2.4.0...v2.5.0
[2.4.0]: https://github.com/iamadesignerusually/ExactMouse-Redux/compare/v2.3.1...v2.4.0
[2.3.1]: https://github.com/iamadesignerusually/ExactMouse-Redux/compare/v2.3.0...v2.3.1
[2.3.0]: https://github.com/iamadesignerusually/ExactMouse-Redux/compare/v2.2.1...v2.3.0
[2.2.1]: https://github.com/iamadesignerusually/ExactMouse-Redux/compare/v2.2.0...v2.2.1
[2.2.0]: https://github.com/iamadesignerusually/ExactMouse-Redux/compare/v2.1.1...v2.2.0
[2.1.1]: https://github.com/iamadesignerusually/ExactMouse-Redux/compare/v2.1.0...v2.1.1
[2.1.0]: https://github.com/iamadesignerusually/ExactMouse-Redux/compare/v2.0.0...v2.1.0
[2.0.0]: https://github.com/iamadesignerusually/ExactMouse-Redux/releases/tag/v2.0.0
