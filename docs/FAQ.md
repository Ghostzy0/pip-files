# Pip Files FAQ

## What does Pip Files do?

Pip Files is a native macOS folder automation and file organizer. It applies ordered rules to direct files inside folders you select. You can preview proposed copies, moves, renames, Finder tags and single-file ZIP archives before you approve an Apply action.

## Is this a Hazel alternative?

Pip Files is an original implementation inspired by Hazel's folder-rule workflow. It is not affiliated with Noodlesoft and does not claim full Hazel parity. It currently lacks recursive rules, content search, scripts, advanced matching, rule sharing and a login daemon. See the detailed [workflow comparison](PARITY.md) and [research notes](REFERENCES.md).

## Does it send my files to a service?

No. Core file operations run locally. The app has no telemetry, account, hosted AI, update service or external connection. Local folder names, paths, bookmarks and operation history are stored on the Mac and are not encrypted. This is an unsandboxed app; use disposable folders first and keep backups.

## Will it change files automatically?

Preview does not write files. You must explicitly choose Apply after reviewing a preview. Background rules are separately opt-in, run only while the app is open, and start paused on every launch. A stable-file check cannot prove another program has finished writing, so do not watch active download or build folders.

## Which folders can rules process?

Only direct regular files in folders you select. The app does not recurse into subfolders or follow symlinks. Existing destinations are not overwritten. Move and rename are limited to the same filesystem; use Copy for a different volume. A multi-action rule can partially complete and may require reverse-order Undo or manual inspection.

## Where are app data and recovery files stored?

Packaged data is in `~/Library/Application Support/Files Baseline` or `~/Library/Application Support/Pip Files`, selected by each bundle's edition marker. The bundled apps ignore the development `--baseline` argument and `PIP_FILES_DATA_DIR` override. Missing or invalid package markers fail closed before app data is opened. Test/development launches may use those overrides.

Undo for Copy and ZIP keeps the output in a hidden recovery file next to the original result; it is not automatically deleted. History shows recovery and interrupted staging paths. Inspect those paths before any manual cleanup. Deleting the app's data also deletes its rule and history records.

## Does it run on macOS 14 and Intel Macs?

The project targets macOS 14 or later, and GitHub Actions currently tests and builds on macOS 14. The recorded native workflow was run on macOS 27.0.1 arm64; runtime acceptance on macOS 14 and Intel is still open. Do not infer runtime acceptance from the deployment target or CI build.

## Are downloadable binaries available?

The public repository currently provides source and build instructions, not a binary release. Local builds are ad-hoc signed and are not Developer ID signed or notarised. See the [release and verification state](TESTING.md) before distributing any app bundle.

## How do I try it safely?

Follow [Getting started](GETTING-STARTED.md) and use the built-in sample folder. Keep background rules paused. Review each Preview before Apply and confirm Undo in History. Do not start with personal folders or active download/build locations.

## Can an AI assistant set it up?

Yes. The [AI setup guide](AI-SETUP.md) contains a copyable prompt and exact commands. It asks the assistant to verify the local toolchain, run tests and builds, and launch only the edition you choose. It does not require cloud access, personal-folder access or security-setting changes.
