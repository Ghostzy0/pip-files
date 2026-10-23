# Getting started with Pip Files

Pip Files is an experimental, native Swift app for macOS folder rules. The **Files Baseline** edition uses standard macOS presentation; **Pip Files** uses its original Paper/Ink theme. They share one engine and keep separate app data.

## Requirements and current verification

- macOS 14 or later and Apple's Swift toolchain (Swift 5.9+).
- No account, cloud service, model, Python package or external Swift package is needed.
- The current public source builds both editions in local tests and in macOS 14 CI. The native workflow was last accepted on macOS 27.0.1 arm64 at source `5822bf8`; the current edition-isolation source has not yet been repeated through the native UI. Intel and older macOS runtime acceptance remain open. See [Verification and acceptance](TESTING.md).

## Build both editions

In Terminal, clone this repository and move into its folder:

```sh
git clone https://github.com/Ghostzy0/pip-files.git
cd pip-files
swift --version
swift test --jobs 2
./scripts/build.sh baseline
./scripts/build.sh pip
codesign --verify --deep --strict 'dist/Files Baseline.app'
codesign --verify --deep --strict 'dist/Pip Files.app'
```

To open one edition, use one command:

```sh
open 'dist/Files Baseline.app'
```

Or:

```sh
open 'dist/Pip Files.app'
```

These local builds use ad-hoc signing. The repository has no binary release yet. The app has not been Developer ID signed or notarised; do not disable macOS security controls globally.

## Try the disposable sample

1. Open one edition and choose **Sample** in Files Baseline or **Create sample folder** in Pip Files.
2. Review the created sample rule and selected inbox path.
3. Choose **Preview** and inspect every proposed action and destination.
4. Apply only the reviewed sample operation.
5. Open **History** and use **Undo**. Confirm the sample returns to its original folder.

Background rules start paused. Keep them paused for the first run. The sample lives in the app's own data folder; it does not use Downloads, Documents or another personal folder. Read the [FAQ](FAQ.md) and [known workflow gaps](PARITY.md) before choosing other folders.

## Ask an AI assistant for setup

If using an assistant that can run Terminal commands, read the short [AI setup prompt](AI-SETUP.md). It asks the assistant to build and verify both variants, then launch only the edition you request using the disposable sample. It does not authorize use of personal folders or changing system security settings.

## Source, licences and evidence

Pip Files is MIT-licensed original Swift code using Apple system frameworks. Hazel is a workflow reference; no Hazel source, media, branding or affiliation is included. Forel, Hazelnut and organize were researched but are not embedded. Read [research and provenance](REFERENCES.md), [third-party notices](../THIRD-PARTY-NOTICES.md), and [verification and acceptance](TESTING.md).
