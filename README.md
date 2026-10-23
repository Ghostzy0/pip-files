# Pip Files: local folder automation for macOS

Pip Files is a native Swift macOS file organizer and folder-automation app. Choose a folder, create ordered rules, preview proposed file actions, then apply the changes you reviewed. It is an experimental original implementation inspired by Hazel's folder-rule workflow, not an affiliated product or a full Hazel replacement.

Two declared editions share the same deterministic core: **Files Baseline** uses standard macOS presentation; **Pip Files** applies an original Paper/Ink Pip interface. Both are MIT licensed. Neither contains Hazel or Forel code, media, branding or reserved Pip motion code.

## Build and run

Requires macOS 14 or later, Apple Silicon or Intel source build, Xcode Command Line Tools with Swift 5.9+. This development host uses Swift 6.4; only tested architectures will have binary releases. No account, model download, service, Python or package dependency.

```sh
swift test --jobs 2
./scripts/build.sh baseline
./scripts/build.sh pip
open 'dist/Files Baseline.app'
open 'dist/Pip Files.app'
```

Run these commands from this repository root. Source builds are ad-hoc signed locally, not Developer ID signed or notarised. macOS may require the usual per-app Open confirmation for downloaded experimental builds. Do not disable Gatekeeper globally.

For the step-by-step first run, see [Getting started](docs/GETTING-STARTED.md). For common questions about safety, data storage, macOS support and Hazel workflow gaps, see the [FAQ](docs/FAQ.md).

Start with **Create sample folder** (baseline: **Sample**). It creates a clearly labelled disposable workspace inside the app's own data directory, never your Downloads or Documents. Preview first. Review each source, action and destination; only press Apply when intended. After applying, History shows each action and any uncertain outcome. Undo refuses changed/replaced files or an occupied original path. Undo of Copy/ZIP moves the result into a journaled hidden sibling `.pip-files-undo-*` and keeps it; no automatic purge occurs. Reveal the recovery folder in History (Finder’s Command-Shift-Period shows hidden files). For multiple actions, undo newest first.

## Rules and limits

- Selected folders only, direct regular children; no recursion or symlink following.
- Ordered first matching enabled rule, all/any extension/name/size/age conditions.
- Copy, move, exact rename, Finder tag and ZIP archive, in visible action order. ZIP stores one file uncompressed, up to 128 MiB.
- No replacement of existing paths, scripts, deletion rule or cloud processing. Moves/renames and their undo stay on the same filesystem; use Copy for another volume.
- Preview is read-only. Freshness and destination checks run again before Apply.
- Opt-in background rules run only while this app is open, on the selected folder, with age and repeated stable observations. Every launch starts paused. A stability window cannot prove every writer has finished; do not watch active download/build directories in this alpha.
- History uses per-action write-ahead records. Unknown outcomes stop replay and need manual inspection of both paths. A multi-action rule is not an all-or-nothing filesystem transaction. Move/rename stages a file under a recorded hidden `.pip-files-stage-*` name before verification; interruption may leave it there. Uncooperative concurrent writers can still change names between checks: no atomic inode-conditional rename guarantee. History exposes uncertain paths; no automatic retry. App/process-interruption recovery is tested separately from unverified power-loss durability.
- Full Hazel conditions, nested groups, content search, scripts, rule sharing, recursion, login daemon and advanced date/template actions are not implemented.

## Privacy and recovery

Core operations use local files only. No telemetry, updater, external connection or AI is included. Folder names, rule paths, scoped bookmarks and journal fingerprints are stored locally and are not encrypted. This is an unsandboxed desktop app; folder selection controls its own engine scope and does not imply macOS security sandboxing. Choose only test folders until comfortable with the alpha.

Default data lives in `~/Library/Application Support/Pip Files` (baseline: `Files Baseline`), containing `folders.json`, `destination-grants.json` and `Journal/`. Unbundled development/test runs may set `PIP_FILES_DATA_DIR` to select a disposable data location. Packaged apps ignore that override and use the identity declared by their bundle marker; packaged launches also ignore `--baseline`. A bundle with a missing or unknown marker fails closed before opening saved data. Quit before backing up that directory. Restore the complete directory; do not edit journal records to force a retry. Corrupt data fails closed. Keep the data and inspect paths in Finder if recovery is uncertain. Removing a folder from the app preserves its files. Hidden recovery/staging files remain beside the affected files and consume disk space until you inspect/manage them yourself. Removing application data also removes history/undo information; preserve backups first.

These are the **Neutral Core** and **Pip Core** variants. Neutral Plus and Pip Plus are proposed separately; this source does not contain their extra feature set. The [baseline preview](docs/images/baseline-preview.png), [Pip rule editor](docs/images/pip-editor.png), and [Pip history after undo](docs/images/pip-undo.png) show synthetic local test folders on the tested Mac. Preview behavior in Pip Core was also checked through the native accessibility tree; its screenshot is pending a valid recapture.

See [AI setup](docs/AI-SETUP.md), [verification and acceptance](docs/TESTING.md), [known workflow gaps](docs/PARITY.md), [code and research provenance](docs/REFERENCES.md), [notices](THIRD-PARTY-NOTICES.md), [change notes](CHANGELOG.md), [security](SECURITY.md), and [proposed roadmap](docs/ROADMAP.md). The [`llms.txt`](llms.txt) file provides a factual link index for AI tools. [Hazel manual](https://www.noodlesoft.com/manual/hazel/) · [Forel source research](https://github.com/lab421/forel).

Maintained by [Ghostzy0](https://github.com/Ghostzy0), as part of Pip Reps. MIT. Please use GitHub issues for reproducible synthetic examples; do not attach private file paths, bookmarks or journals.
