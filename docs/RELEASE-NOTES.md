# Release notes

## Unreleased · experimental shared source

The source defines neutral Files Replica and Files Baseline Plus configurations alongside Pip Files and Pip Files Plus. Plus adds read-only History search, filters, and reviewed local JSON/CSV reports. Packaged variants use independent bundle and data identities. The older generic Files Baseline profile remains available for development reproduction.

This source snapshot is not a binary release. The latest build-script privacy scan, fresh clean-export build and hosted CI passed for this source PR; native acceptance of the edition-isolation/reference/Plus changes remains pending. See [Testing](TESTING.md) for exact evidence and limits.

## 0.1.0-alpha.1 · historical Core workflow

At source commit `5822bf8`, the original Core workflow completed a bounded native synthetic picker/rule/preview/apply/history/undo path on macOS 27.0.1 arm64. The evidence and limitations are recorded in [Testing](TESTING.md). This historical Core result does not certify later source changes or Plus.
