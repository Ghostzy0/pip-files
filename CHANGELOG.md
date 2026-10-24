# Changes

## Unreleased · experimental source integration

- The neutral Replica preview now gives guidance that stays accurate before and after Apply: review proposed changes first; applied actions are recorded in History. This copy-only correction addresses [Replica issue #5](https://github.com/Ghostzy0/pip-files-replica/issues/5). A new native Move → Apply → History → Undo retest remains pending.

- The Plus export sheet keeps privacy disclosures and save errors in a bounded scroll region. At the minimum supported window, 24 October native visual checks of Pip Plus and Neutral Plus showed the full disclosures and all three controls in normal and refused-replacement states; refusal preserved the existing report bytes. Broader native and keyboard acceptance remains open. Neutral Plus Return activation remains under investigation in [issue #8](https://github.com/Ghostzy0/pip-files/issues/8); the layout change addresses the truncation reported in [issue #6](https://github.com/Ghostzy0/pip-files/issues/6).

Adds a neutral manual-informed view and editor shared by the `replica` and `baseline-plus` profiles, plus History search, filters and explicitly reviewed local JSON/CSV reports in the two Plus profiles. Core file-operation behavior is shared. Packaged editions use separate bundle and data identities, with edition isolation and packaged-path privacy checks. This is a source update, not a binary release. Current CI, native acceptance and release gates are tracked in [Testing](docs/TESTING.md). History count, empty-state, timestamp and issue captions now use stronger contrast in the reference layout and Core fallback; Plus report notices retain their edition palette.

## 0.1.0-alpha.1 · historical Core workflow

At source commit `5822bf8`, the original Core workflow completed a bounded native synthetic picker/rule/preview/apply/history/undo path on macOS 27.0.1 arm64. See [Testing](docs/TESTING.md) for evidence limits. That historical test does not certify later source changes or Plus.
