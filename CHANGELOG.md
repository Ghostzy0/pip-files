# Changes

## 0.1.0-alpha.1 · experimental Core

Original native folder-rule Neutral Core and Pip Core appearances share the same engine. Selected folders, ordered deterministic rules, preview/apply and recoverable operation history form the initial scope. Undo of Copy/ZIP retains hidden recovery output; move/rename use journaled staging. Copy preserves Finder tags, resource forks, named extended attributes, mode and modification time in tested fixtures. The two Core packages were tested on macOS 27.0.1 arm64. See [testing](docs/TESTING.md) for exact scope and gaps. Plus enhancements have not shipped.

## Unreleased Core safety fix

Packaged bundles now select their appearance and data directory only from the bundle's `PipFilesEdition` marker. Missing or invalid markers fail closed before opening saved data. The `--baseline` switch applies only to unbundled development launches, which use separate development data directories. Packaged bundles also ignore the development data-directory override environment variable. Local tests, packages and native acceptance for this source change are pending.
