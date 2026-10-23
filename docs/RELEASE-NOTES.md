# 0.1.0-alpha.1 patch notes

Experimental original Files Baseline and Pip Files editions. Native macOS app, local deterministic engine, no account or runtime package dependency.

This alpha introduces explicit folder selection, first-match all/any rules, visible ordered actions, read-only preview and explicit Apply. Copy/move/rename/tag/store-only ZIP actions write per-action intent/result history. Undo checks file identity, content, dates, tags and permissions; uncertain or changed results refuse automated replay. Background processing is opt-in for the selected folder while the app stays open and starts paused at launch.

Review fixes include anchored no-follow directory/file descriptors for enumeration/reads/mutations, exclusive destinations, SHA-256 fingerprints, a process lock, interrupted undo records, recorded recovery retention, edited-rule idempotence, mode-change protection, failed config/history reads disabling operations, watcher pause during editing/history, save-draft preservation, exact recovery paths and Finder reveal, visible On/Off, ink primary actions and singular/plural result copy.

The local independent regression suite passed 28 tests (25 engine + 3 app-state) on macOS27.0.1 arm64 with Swift6.4. Packaged native initial baseline and Pip workflows moved/undid the same synthetic receipt; final post-fix package acceptance remains to be recorded in TESTING before binary publication.

Limits: no full Hazel parity, no recursion/scripts/deletion/login daemon, same-filesystem move/rename only, ZIP uncompressed one file up to128MiB, no atomic multi-action transaction. Poll stability does not prove writers finished. Actual volume ejection/native permission revocation, VoiceOver, old macOS/Intel runtime and power-loss durability remain unverified. Builds are ad-hoc signed, not Developer ID signed/notarised. Use disposable folders and backups. No user-data migration from Hazel/Forel. Both editions have separate default data directories.
