# Release notes

## Unreleased · experimental shared source

The source defines neutral Files Replica and Files Baseline Plus configurations alongside Pip Files and Pip Files Plus. Plus adds read-only History search, filters, and reviewed local JSON/CSV reports. Packaged variants use independent bundle and data identities. The older generic Files Baseline profile remains available for development reproduction.

This is a public source snapshot, not a binary release. The clean export at tested code commit `988769630e3a1d31a3046c0390801479cfccede3` passed 50 active tests with one expected helper skip and zero failures on macOS 27.0.1 arm64; hosted macOS 14 CI passed at that exact commit ([run 40117704192](https://github.com/Ghostzy0/pip-files/actions/runs/40117704192)). Current main merge `2e9aa59fac2f033b75778c4a8dd6a0cab01b3ccd` passed CI ([run 40119435892](https://github.com/Ghostzy0/pip-files/actions/runs/40119435892)) and adds no source-code changes over the tested code commit. Native acceptance is partial: bounded Plus report and minimum-window disclosure/error-layout checks passed, while current-source Core/Replica workflows, Neutral Plus Return activation ([issue #8](https://github.com/Ghostzy0/pip-files/issues/8)), and broader keyboard/accessibility acceptance remain open. No app bundle is published. See [Testing](TESTING.md) for exact evidence and limits.

## 0.1.0-alpha.1 · historical Core workflow

At source commit `5822bf8`, the original Core workflow completed a bounded native synthetic picker/rule/preview/apply/history/undo path on macOS 27.0.1 arm64. The evidence and limitations are recorded in [Testing](TESTING.md). This historical Core result does not certify later source changes or Plus.
