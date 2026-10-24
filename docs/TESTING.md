# Testing and acceptance

This page separates source checks, package builds, native app interaction, and release status. One kind of evidence does not imply another.

## Historical Core native evidence

At source commit `5822bf8`, an independent clean clone passed 32 engine tests and 4 app-state tests, with one expected child-helper skip and zero failures. Both original Core packages built and passed strict/deep ad-hoc signature checks. On macOS 27.0.1 arm64, each exact package completed a bounded synthetic picker → Move rule → Preview → Apply → History → Undo flow; the source was restored and destination absent. Closing the last window exited each process. This does not establish general file safety, accessibility across all controls, Hazel parity, or runtime acceptance on other hosts.

## Later source checks

A subsequent edition-isolation follow-up had five app-state and 32 active engine tests pass, with one expected helper skip, and built the two Core bundles. Resolver tests cover authoritative package markers, fail-closed missing/unknown markers, development-only CLI selection and rejection of packaged data-directory overrides. Native interaction of those changed packages was pending.

A later integrated Plus/reference checkpoint passed 49 active tests, with one expected child-helper skip, and all four canonical package builds passed local strict/deep ad-hoc signature verification. These earlier results predate the final package-path scan and manual-preview/watch regression; the fresh public-export results below include both changes.

## Known open gates

- Native acceptance remains partial. The 24 October 2026 minimum-window Plus disclosure/error-layout and bounded report review/save/cancel/no-overwrite slice passed. Neutral Plus Return-key activation of Save JSON remains open in [issue #8](https://github.com/Ghostzy0/pip-files/issues/8). Current-source Core and Replica native workflows, full keyboard/accessibility checks, and direct same-input Hazel workspace/editor comparison remain pending.
- Observation of the native Hazel rule workspace/editor; the neutral layout is manual-informed, not verified faithful recreation.
- Runtime on Intel and macOS 14, VoiceOver/Full Keyboard Access across controls, removable-volume/revoked-grant behavior, and actual power-loss durability.
- Developer ID signing and notarisation.

There is no complete Hazel parity, universal safety or accessibility claim. No downloadable app bundle is published here. See [release notes](RELEASE-NOTES.md) and [workflow gaps](PARITY.md).


## Dated source, test, build, and CI evidence

### Local test run · 24 October 2026

On 24 October 2026, a local macOS 27.0.1 arm64 run passed 50 active tests plus one expected helper skip. Its 36 app/test/build inputs were verified byte-identical to public source `988769630e3a1d31a3046c0390801479cfccede3`; the local test command was not run in a fresh public checkout.

### Public candidate builds · 24 October 2026

A fresh public export at custom code commit `988769630e3a1d31a3046c0390801479cfccede3` produced the custom `baseline-plus`, `pip`, and `pip-plus` candidates. The separate neutral Replica candidate was built from `pip-files-replica` at `f5fa7edea79d984541c3efdfbe4af419d8e90e64`. These package builds do not imply app launch or native workflow acceptance.

### Hosted CI

Hosted macOS 14 CI passed its test and four-profile build workflow at exact custom code commit `988769630e3a1d31a3046c0390801479cfccede3` ([run 40117704192](https://github.com/Ghostzy0/pip-files/actions/runs/40117704192)). The current main merge `2e9aa59fac2f033b75778c4a8dd6a0cab01b3ccd` also passed hosted CI ([run 40119435892](https://github.com/Ghostzy0/pip-files/actions/runs/40119435892)); comparison with `988769630e3a1d31a3046c0390801479cfccede3` shows only `CHANGELOG.md` and `SOURCE-MANIFEST.json` changed, with no source-code changes. CI does not launch an app. These results do not establish macOS 14 runtime acceptance, Intel support, or full native workflow acceptance. No downloadable binary is published.
