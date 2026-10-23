# Testing and acceptance

This page separates source checks, package builds, native app interaction, and release status. One kind of evidence does not imply another.

## Historical Core native evidence

At source commit `5822bf8`, an independent clean clone passed 32 engine tests and 4 app-state tests, with one expected child-helper skip and zero failures. Both original Core packages built and passed strict/deep ad-hoc signature checks. On macOS 27.0.1 arm64, each exact package completed a bounded synthetic picker → Move rule → Preview → Apply → History → Undo flow; the source was restored and destination absent. Closing the last window exited each process. This does not establish general file safety, accessibility across all controls, Hazel parity, or runtime acceptance on other hosts.

## Later source checks

A subsequent edition-isolation follow-up had five app-state and 32 active engine tests pass, with one expected helper skip, and built the two Core bundles. Resolver tests cover authoritative package markers, fail-closed missing/unknown markers, development-only CLI selection and rejection of packaged data-directory overrides. Native interaction of those changed packages was pending.

A later integrated Plus/reference checkpoint passed 49 active tests, with one expected child-helper skip, and all four canonical package builds passed local strict/deep ad-hoc signature verification. These earlier results predate the final package-path scan and manual-preview/watch regression; the fresh public-export results below include both changes.

## Known open gates

- Native acceptance of the edition-isolation fix and the current reference-style and Plus UI.
- Observation of the native Hazel rule workspace/editor; the neutral layout is manual-informed, not verified faithful recreation.
- Runtime on Intel and macOS 14, VoiceOver/Full Keyboard Access across controls, removable-volume/revoked-grant behavior, and actual power-loss durability.
- Developer ID signing and notarisation.

There is no complete Hazel parity, universal safety or accessibility claim. No downloadable app bundle is published here. See [release notes](RELEASE-NOTES.md) and [workflow gaps](PARITY.md).


## Fresh public-export validation · 23 October 2026

A fresh public-repository export of the source included in this PR passed `swift test --jobs 2` on macOS 27.0.1 arm64 with 50 tests passing, one expected child-helper skip, and zero failures. Each canonical profile (`replica`, `baseline-plus`, `pip`, `pip-plus`) built; all four embedded edition markers matched the requested profile, and each app passed `codesign --verify --deep --strict`. The build script strips debug symbols and fails closed if the packaged executable still contains checkout or home-directory paths.

Hosted macOS 14 CI passed for this PR's tested source snapshot, including the four builds ([run 39891534765](https://github.com/Ghostzy0/pip-files/actions/runs/39891534765)). No app was launched during this validation slice. Native acceptance of the edition-isolation, manual-review/watch, neutral-view and Plus changes remains pending. No binary is published by this source PR; see the live pull request for the current CI status.
