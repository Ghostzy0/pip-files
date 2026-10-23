# Set up Pip Files with an AI assistant

For a person-led walkthrough, see [Getting started](GETTING-STARTED.md) and the [FAQ](FAQ.md). Paste this prompt into an assistant with terminal access:

> Set up this Pip Files checkout on my Mac. Read README.md, docs/GETTING-STARTED.md, docs/FAQ.md and docs/TESTING.md first. Verify macOS and Swift, run the documented tests, build both Core editions, check both signatures, then launch only the edition I request. Use its disposable sample folder, keep background rules paused and never operate on personal folders or change macOS security settings. Report the exact source commit and any verification gates that remain open.

Commands from this repository root (choose one `open` command only after the build succeeds):

```sh
sw_vers
swift --version
swift test --jobs 2
./scripts/build.sh baseline
./scripts/build.sh pip
codesign --verify --deep --strict 'dist/Files Baseline.app'
codesign --verify --deep --strict 'dist/Pip Files.app'
open 'dist/Pip Files.app' # or: open 'dist/Files Baseline.app' (choose one)
```

Requires macOS 14+ and Apple's Xcode Command Line Tools with Swift Package Manager support for the declared 5.9 tools version; no paid account or remote script install. If tools are missing, use Apple's documented install route and complete any macOS consent yourself. If a folder is unavailable, reconnect its volume or choose it again. If Preview is blocked, read its reason; do not force Apply. Setup does not require Full Disk Access. GitHub Actions currently tests and builds at source `7322bbc` on macOS 14. The bounded native picker/rule/preview/apply/history/undo workflow was last recorded for source `5822bf8` on macOS 27.0.1 arm64; current edition-isolation packages still need native reacceptance. Intel and older-macOS runtime acceptance remain open. See [verification and acceptance](TESTING.md) and [provenance](REFERENCES.md).
