# Tested state

Verification is in progress for 0.1.0-alpha.1. Local build host: macOS 27.0.1 arm64, Swift 6.4. Code targets macOS 14+. No Intel binary or clean old-OS runtime acceptance yet.

The original packaged baseline and initial Pip package both ran the same disposable receipt through Sample → Preview → Apply → History → Undo. Native Paper light, Paper dark and Oat history were captured. Pre-release safety/UI fixes are being rebuilt; these observations alone do not validate the final package.

Core XCTest fixtures cover preview immutability, rule order/all-any, collisions, stale source/rules, move/copy/rename/tag/ZIP/undo, file identity, symlinks and read/write scope, interrupted journal replay, corrupt data, process lock and permission changes. Independent current run: `swift test --scratch-path /tmp/pip-files-audit-core-build --jobs 2`, 25 engine + 3 app-state tests, 28 pass, zero failures. A separately compiled disposable fixture also verified symlink-ancestor refusal and edited-rule ledger behavior. Release hashes and final native checks will follow after rebuilt package acceptance.

Three independent review rounds cover core/data; actual rendered native UI/UX; and packaged setup/privacy/licensing/export. Findings, fixes and retests are recorded internally; this public summary will report material remaining gaps without publishing private reference captures.

Not yet verified: Hazel native comparison (evaluation agreement needs owner acceptance), actual removable volume eject/revoked native grants, power-loss durability, VoiceOver/Full Keyboard Access on all controls, Intel or macOS 14 runtime, and Developer ID/notarisation. No claim of complete parity or universal safety/accessibility.
