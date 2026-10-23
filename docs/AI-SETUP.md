# Set up with an AI assistant

Paste this into an assistant with terminal access:

> Set up this Pip Files checkout on my Mac using README.md. Verify macOS and Swift, run the tests, build both baseline and Pip editions, then launch only the requested edition. Use its disposable sample folder and keep background rules paused; never operate on my personal folders or change macOS security settings.

Commands from this repository root:

```sh
sw_vers
swift --version
swift test --jobs 2
./scripts/build.sh baseline
./scripts/build.sh pip
codesign --verify --deep --strict 'dist/Pip Files.app'
codesign --verify --deep --strict 'dist/Files Baseline.app'
open 'dist/Pip Files.app' # or open 'dist/Files Baseline.app'
```

Requires macOS 14+ and Xcode Command Line Tools/Swift 5.9+; no paid account or remote script install. If tools are missing, install Apple's tools through Xcode or `xcode-select --install` yourself when macOS requests consent, then rerun. If a folder is unavailable, reconnect its volume or choose it again. If preview is blocked, read its reason; do not force Apply. No setup step requires Full Disk Access. On macOS 27.0.1 arm64, both builds, their ad-hoc signature checks and the synthetic native workflow were executed. Other operating systems and architectures need their own runtime check.
