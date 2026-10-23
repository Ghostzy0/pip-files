# Workflow coverage

Pip Files and Files Baseline are original MIT implementations. Hazel is a proprietary behavioural reference, not redistributed code/assets or a complete-parity claim. Forel, Hazelnut and organize were researched but are not embedded.

Implemented scope: explicit selected folders, direct regular files, ordered first-match rules, all/any extension/name/size/age predicates, ordered copy/move/exact rename/Finder tag/ZIP actions, zero-write preview, explicit apply, opt-in app-open stable observations, persisted operation history and conservative Undo.

Safety limits: collisions refuse instead of overwriting; symlinks/directories are kept; three-second modification age plus repeated stable observations; same-filesystem move/rename only; ZIP stores a single file uncompressed up to 128 MiB; interrupted records block replay. Multi-action sequences may partially complete and require reverse-order Undo/manual review. Changed/replaced outputs refuse Undo. Unsandboxed app, no network/AI/account.

Missing Hazel workflows include recursive subfolder processing, Continue Matching Rules, nested conditions, content/metadata/regex matchers, date templates, rename tokens, rule-sharing UI, scripts and login daemon. Stability cannot prove every writer finished. Native grant revocation, actual removable-volume loss and assistive-tech workflows need further testing.

Official reference documentation: [Preview](https://www.noodlesoft.com/manual/hazel/work-with-folders-rules/create-edit-rules/preview-a-rule/) · [Rule order](https://www.noodlesoft.com/manual/hazel/work-with-folders-rules/create-edit-rules/create-a-rule/) · [Revert](https://www.noodlesoft.com/manual/hazel/work-with-folders-rules/manage-rules/revert-a-file/). Reference documentation describes features; it is separate from observed Pip testing in TESTING.md.

Undo of Copy/ZIP retains a journaled hidden sibling recovery file and never automatically purges it. Move/rename stages to a recorded hidden sibling, verifies identity and preserves uncertain state for manual review. No atomic compare-inode rename is claimed against uncooperative writers. History includes every recovery/staging path.

Copy uses Apple's descriptor-based copy facility with file data and metadata; source/output are checked, failures stay interrupted for inspection. ZIP stores the primary file contents only, not Finder-specific metadata/resource forks; the original file is retained. ZIP extraction is tested separately from metadata-preserving Copy.
