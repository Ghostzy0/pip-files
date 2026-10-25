# Getting started

Pip Files is experimental native Swift software for macOS folder rules. Build one source profile, then use the app’s disposable sample before choosing any other folder.

## Requirements and evidence

- macOS 14+ and Apple’s Swift toolchain with Swift Package Manager.
- No account, cloud service, model, Python package, or external Swift package is required.
- The package target and hosted CI do not establish runtime support on every macOS version. The bounded original Core native workflow was tested on macOS 27.0.1 arm64 at an earlier commit. The current neutral reference-style view and Plus interactions await native acceptance. See [Testing](TESTING.md).

## Build one edition

In Terminal, move to the repository root containing `Package.swift`, then run:

```sh
swift --version
swift test --jobs 2
./scripts/build.sh replica
codesign --verify --deep --strict 'dist/Files Replica.app'
open 'dist/Files Replica.app'
```

Choose one profile: `replica`, `baseline-plus`, `pip`, or `pip-plus`. The legacy generic package uses `baseline`. Replace the example with only the edition you intend to open. Local builds are ad-hoc signed; this repository does not publish binaries and the app is not notarised. Do not disable Gatekeeper globally.

### Select a Swift build backend when needed

The script uses Swift's default backend when `PIP_FILES_BUILD_SYSTEM` is unset. On 25 October 2026, the host's default `swiftbuild` Release path stalled during `dsymutil`; the installed `swift build --help` listed `native`, `swiftbuild`, and `xcode` as supported backends. To retry with Swift's native backend:

```sh
PIP_FILES_BUILD_SYSTEM=native ./scripts/build.sh baseline-plus
```

This selects only Swift's build backend. The normal Release configuration, stripping, local-path scan, notice copying, code signing, signature verification, and atomic promotion still run. A successful command and package checks are required; the fallback is not itself evidence of a completed build.

## Try the disposable sample

1. Open one edition and choose **Create sample folder**.
2. Inspect the sample rule and selected inbox path.
3. Choose **Preview** and review every proposed action and destination.
4. Apply only the changes you reviewed.
5. Open **History** and use **Undo** to restore the sample.

Background rules start paused; keep them paused for the first run. The sample stays in the app’s data directory, not Downloads or Documents. Read the [FAQ](FAQ.md) and [workflow gaps](PARITY.md) before selecting another folder.

## Provenance and licensing

The app is original MIT-licensed Swift source using Apple system frameworks. Hazel is a public workflow reference; no Hazel source, branding or affiliation is included. See [research and provenance](REFERENCES.md), [third-party notices](../THIRD-PARTY-NOTICES.md), and [Testing](TESTING.md).
