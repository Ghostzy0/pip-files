# Changes

## Unreleased · experimental source integration

Adds a neutral manual-informed view and editor shared by the `replica` and `baseline-plus` profiles, plus History search, filters and explicitly reviewed local JSON/CSV reports in the two Plus profiles. Core file-operation behavior is shared. Packaged editions use separate bundle and data identities, with edition isolation and packaged-path privacy checks. This is a source update, not a binary release. Current CI, native acceptance and release gates are tracked in [Testing](docs/TESTING.md). History count, empty-state, timestamp and issue captions now use stronger contrast in the reference layout and Core fallback; Plus report notices retain their edition palette.

## 0.1.0-alpha.1 · historical Core workflow

At source commit `5822bf8`, the original Core workflow completed a bounded native synthetic picker/rule/preview/apply/history/undo path on macOS 27.0.1 arm64. See [Testing](docs/TESTING.md) for evidence limits. That historical test does not certify later source changes or Plus.
