# Pip Files: local folder automation for macOS

Pip Files is an experimental native Swift app for organizing direct files in folders you select. Create ordered rules, preview proposed actions, and explicitly apply the changes you reviewed. This repository contains original workflow software informed by the Hazel folder-rules use case; it is not affiliated with Noodlesoft and does not claim full Hazel parity.

The source provides four canonical configurations: **Files Replica** (`replica`) and **Files Baseline Plus** (`baseline-plus`) use an original neutral, manual-informed layout; **Pip Files** (`pip`) and **Pip Files Plus** (`pip-plus`) use the original Paper/Ink Pip interface. The older generic **Files Baseline** (`baseline`) remains a legacy build option. All variants share the same deterministic file-operation engine and keep separate app and data identities. The neutral layout is an original interpretation of public workflow references; the native Hazel rule workspace/editor was not observed, so “Replica” does not mean verified 1:1 fidelity.

## Build from source

Requires macOS 14+, Apple’s Swift toolchain and Swift Package Manager. There are no external Swift package dependencies, account requirements, models, or hosted services. Run from the repository root:

```sh
swift test --jobs 2
./scripts/build.sh replica
./scripts/build.sh baseline-plus
./scripts/build.sh pip
./scripts/build.sh pip-plus
```

For one optional legacy package, use `./scripts/build.sh baseline`. The build script defaults to `pip`; pass a profile explicitly when building. Then open only the edition you chose, for example `open 'dist/Files Replica.app'`. Local builds are ad-hoc signed, not Developer ID signed or notarised. This repository currently publishes source and instructions, not downloadable app bundles. Do not disable Gatekeeper globally. See [Getting started](docs/GETTING-STARTED.md).

Start with **Create sample folder**. It creates a disposable workspace in the app’s data directory, not in Downloads or Documents. Preview first and inspect sources, actions and destinations before Apply. See [safe first-run steps](docs/GETTING-STARTED.md) and the [FAQ](docs/FAQ.md).

## Workflow and safety limits

Rules apply to direct regular children of selected folders, without recursion or symlink following. Supported actions are Copy, Move, exact Rename, Finder tag and single-file ZIP. Existing destinations are not replaced. Preview is read-only; checks run again before Apply. Background rules are opt-in, run only while the app is open, and start paused on every launch.

This is an unsandboxed local app. Folder names, rules, bookmarks and history are stored locally and are not encrypted. A multi-action rule is not an all-or-nothing transaction; inspect uncertain history paths and keep backups. Undo of Copy/ZIP retains a hidden recovery file for manual inspection. Full Hazel conditions, nested groups, content search, scripts, recursion, rule sharing and a login daemon are not implemented. Read the [workflow comparison](docs/PARITY.md) before using anything beyond the sample.

Plus adds read-only History search, filters and explicit JSON/CSV report export. Reports can contain file paths, require a review/confirmation step, and are not restorable journals. Exports are local and never uploaded automatically.

## Data and edition identity

Packaged apps choose their appearance and saved-data directory from their embedded edition marker. Packaged apps ignore development CLI/environment overrides; a missing or unknown marker fails closed before opening saved data. Unbundled development/test runs may use `--baseline` and `PIP_FILES_DATA_DIR` to select isolated test data. See [Testing](docs/TESTING.md) for the evidence boundary.

## Evidence and provenance

The source and package tests cover file operations, recovery behavior, edition isolation and Plus report handling. The historical Core native workflow at `5822bf8` is described in [Testing](docs/TESTING.md); it does not certify current source. Native acceptance is partial: bounded Plus report review/save/cancel/no-overwrite and minimum-window disclosure/error-layout checks passed on 24 October 2026. Neutral Plus Return-key activation of Save JSON remains open in [issue #8](https://github.com/Ghostzy0/pip-files/issues/8). Current-source Core and Replica native workflows, full keyboard/accessibility acceptance, and direct Hazel rule-workspace/editor comparison remain pending. CI targets macOS 14; hosted CI is not native runtime acceptance on macOS 14 or Intel.

See [AI setup](docs/AI-SETUP.md), [testing and acceptance](docs/TESTING.md), [parity limits](docs/PARITY.md), [research and provenance](docs/REFERENCES.md), [notices](THIRD-PARTY-NOTICES.md), [change notes](CHANGELOG.md), [security](SECURITY.md), and [roadmap](docs/ROADMAP.md). [`llms.txt`](llms.txt) is a factual link index for people and AI tools. [Hazel manual](https://www.noodlesoft.com/manual/hazel/) · [Forel source research](https://github.com/lab421/forel).

Maintained by [Ghostzy0](https://github.com/Ghostzy0). MIT licensed. Use GitHub issues for reproducible synthetic examples; do not attach personal paths, bookmarks, journals or private reference captures.
