# Testing and acceptance

This page separates source checks, package builds, native app interaction, and release status. One kind of evidence does not imply another.

## Historical Core native evidence

At source commit `5822bf8`, an independent clean clone passed 32 engine tests and 4 app-state tests, with one expected child-helper skip and zero failures. Both original Core packages built and passed strict/deep ad-hoc signature checks. On macOS 27.0.1 arm64, each exact package completed a bounded synthetic picker → Move rule → Preview → Apply → History → Undo flow; the source was restored and destination absent. Closing the last window exited each process. This does not establish general file safety, accessibility across all controls, Hazel parity, or runtime acceptance on other hosts.

## Later source checks

A subsequent edition-isolation follow-up had five app-state and 32 active engine tests pass, with one expected helper skip, and built the two Core bundles. Resolver tests cover authoritative package markers, fail-closed missing/unknown markers, development-only CLI selection and rejection of packaged data-directory overrides. Native interaction of those changed packages was pending.

The later integrated Plus/reference source passed 49 active tests, with one expected child-helper skip, and all four canonical package builds passed local strict/deep ad-hoc signature verification. This evidence predates the latest build-script executable privacy scan. The current source change strips debug symbols before signing and refuses promotion when the packaged executable still contains local checkout or home-directory paths. A fresh export build and hosted CI for this exact source revision are gates; no test or build claim below should be inferred from the historical results.

## Known open gates

- Native acceptance of the edition-isolation fix and the current reference-style and Plus UI.
- Observation of the native Hazel rule workspace/editor; the neutral layout is manual-informed, not verified faithful recreation.
- Runtime on Intel and macOS 14, VoiceOver/Full Keyboard Access across controls, removable-volume/revoked-grant behavior, and actual power-loss durability.
- Developer ID signing and notarisation.

There is no complete Hazel parity, universal safety or accessibility claim. No downloadable app bundle is published here. See [release notes](RELEASE-NOTES.md) and [workflow gaps](PARITY.md).


## Fresh public-export validation · 23 October 2026

A fresh clean public-repository export of source through upstream commit `3ec35c9` passed `swift test --jobs 2` on macOS 27.0.1 arm64 with 50 tests passing, one expected child-helper skip, and zero failures. Each of the four canonical profiles (`replica`, `baseline-plus`, `pip`, `pip-plus`) built; all four bundle markers matched their requested profile, and each app passed `codesign --verify --deep --strict`. The new build script strips debug symbols and fails closed if its packaged executable still contains the build checkout or home path.

These are local source/test/package checks from this host. Hosted CI for the public feature PR and native acceptance of the current edition-isolation, manual-review/watch, neutral-view and Plus changes remain pending. No app was launched in this validation slice, and no binary is published by this source PR.
