# Workflow coverage

Pip Files is an original MIT-licensed implementation informed by the Hazel folder-rules workflow. It is not affiliated with Noodlesoft and does not claim full parity. No Hazel or Forel code, media, or branding is included.

## Implemented workflow

The shared engine supports explicitly selected folders, direct regular files, ordered first-match rules, all/any extension/name/size/age predicates, ordered Copy/Move/exact Rename/Finder tag/ZIP actions, read-only preview, explicit Apply, app-open opt-in stable observations, persisted operation history, and conservative Undo.

The neutral `replica` and `baseline-plus` profiles use an original layout informed by public Hazel manual documentation. The native Hazel rule workspace/editor workflow has not been observed, so this is not a verified faithful recreation. Pip profiles use original Paper/Ink Pip presentation. Plus adds read-only History search/filtering and reviewed local report export.

## Safety limits

Collisions refuse rather than overwrite; symlinks and directories are kept. A stability window cannot prove a writer has finished. ZIP stores one file uncompressed up to 128 MiB. Move/rename are same-filesystem operations. Interrupted records block replay; multi-action sequences can partially complete and may require reverse-order Undo or manual review. Changed/replaced outputs refuse Undo. This is an unsandboxed local app without network, AI, or account features.

Copy preserves tested Finder tags, resource forks, named extended attributes, mode and modification time. ZIP includes primary file contents, not Finder-specific metadata/resource forks; the source file is retained. No atomic compare-inode rename is claimed against uncooperative writers. History exposes recovery/staging paths; it never automatically purges them.

## Known gaps

Recursive processing, Continue Matching Rules, nested conditions, content/metadata/regex matching, date templates, rename tokens, rule sharing, scripts and a login daemon are not implemented. Removable-volume loss, revoked grants, assistive-technology workflows, Intel/macOS 14 runtime and actual power-loss durability need more testing. See [Testing](TESTING.md) for which behaviors have actually run.
