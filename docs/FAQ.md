# Pip Files FAQ

## What does it do?

Pip Files is a native macOS app for ordered rules over direct files in folders you select. Preview proposed Copy, Move, exact Rename, Finder tag and single-file ZIP actions, then explicitly choose Apply.

## Is it a Hazel replacement?

No. It is an experimental original partial workflow implementation informed by Hazel’s public folder-rule use case. The neutral layout is a manual-informed original design; the native Hazel rule workspace/editor has not been observed. Pip Files is not affiliated with Noodlesoft and does not claim full parity. Recursive rules, scripts, content search, advanced conditions, rule sharing and a login daemon are among the gaps. See [parity](PARITY.md) and [provenance](REFERENCES.md).

## What are the editions?

The source provides neutral Files Replica Core and Files Baseline Plus, and Pip Files Core and Pip Files Plus. The generic Files Baseline build is a legacy profile. Plus adds read-only History search, filters and reviewed local JSON/CSV reports; report files may expose paths and cannot restore journal state.

## Does it send files to a service or act automatically?

No cloud or telemetry is included. Core file operations run locally. Preview does not write files, and Apply is explicit. Background rules are separately opt-in, only run while the app stays open, and start paused each launch. Stability observations cannot prove another app has finished writing.

## Where is app data stored?

Packaged editions use separate `~/Library/Application Support/` folders selected by their embedded edition marker. Packaged apps ignore CLI and `PIP_FILES_DATA_DIR` development overrides. A missing or invalid marker fails closed before saved data is opened. Development/test runs may use those overrides. Folder names, bookmarks and history are not encrypted.

## Is it safe for important files?

Start with the disposable sample and keep backups. Only direct regular children are processed; the app does not recurse or follow symlinks. Existing destinations are not replaced. Multi-action rules can partially complete. Undo for Copy/ZIP preserves a hidden recovery file; inspect it before cleanup.

## Does it run on macOS 14 and Intel?

The package targets macOS 14+, and CI tests/builds on macOS 14. Recorded native workflow evidence is macOS 27.0.1 arm64 at an earlier Core source commit. Runtime acceptance on macOS 14 and Intel remains open.

## Are downloadable apps available?

No binary release is published in this repository. Source builds are ad-hoc signed, not Developer ID signed or notarised. Check [Testing](TESTING.md) for current source and acceptance status.

## Can an AI assistant install it?

The [AI setup guide](AI-SETUP.md) contains a copyable prompt and commands. It constrains the assistant to the requested edition and disposable sample, and forbids personal folders and system-security changes.
