# Set up with an AI assistant

Paste this into an assistant with Terminal access:

> Set up this Pip Files checkout using README.md and GETTING-STARTED.md. Verify macOS and Swift, run the tests, and build only the edition I request. Launch only that edition and use its disposable sample folder. Keep background rules paused. Do not use my personal folders or change macOS security settings. Report the exact source revision and distinguish tests, packaging, and native workflow evidence. Do not claim Hazel parity or a published binary.

From the repository root:

```sh
sw_vers
swift --version
swift test --jobs 2
./scripts/build.sh replica
codesign --verify --deep --strict 'dist/Files Replica.app'
```

Replace `replica` with exactly one requested profile: `baseline-plus`, `pip`, or `pip-plus`. For the legacy generic package use `baseline`. Open only the corresponding app.

The source declares Swift tools 5.9 and a macOS 14 deployment target. CI uses a hosted macOS 14 Swift toolchain; there is no separate compiler-version matrix. A deployment target or CI build does not prove runtime acceptance on that OS or on Intel. The original bounded Core native workflow was previously tested on macOS 27.0.1 arm64; current reference-style and Plus interactions have not completed native acceptance. The app is local-only, unsandboxed, and not notarised. No setup requires Full Disk Access, a cloud account, a model, or a third-party package.

If Preview is blocked, read its reason; do not force Apply. The app’s own sample is disposable. Do not start with Downloads, Documents, active download/build folders or personal data.
