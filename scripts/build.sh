#!/bin/bash
set -euo pipefail
cd "$(dirname "$0")/.."
edition="${1:-pip}"
case "$edition" in baseline) name='Files Baseline';; pip) name='Pip Files';; *) echo 'Usage: build.sh [baseline|pip]' >&2; exit 2;; esac
swift build -c release --jobs 2 -j 2
app="dist/$name.app"
mkdir -p "$app/Contents/MacOS" "$app/Contents/Resources"
cp .build/release/PipFiles "$app/Contents/MacOS/PipFiles"
swift scripts/icon.swift "dist/$edition.iconset" "$edition"
iconutil -c icns "dist/$edition.iconset" -o "$app/Contents/Resources/AppIcon.icns"
cat > "$app/Contents/Info.plist" <<PLIST
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0"><dict>
<key>CFBundleIconFile</key><string>AppIcon</string>
<key>LSApplicationCategoryType</key><string>public.app-category.productivity</string>
<key>CFBundleExecutable</key><string>PipFiles</string>
<key>CFBundleIdentifier</key><string>com.pipreps.files.$edition</string>
<key>CFBundleName</key><string>$name</string>
<key>CFBundleDisplayName</key><string>$name</string>
<key>CFBundleShortVersionString</key><string>0.1.0</string>
<key>CFBundleVersion</key><string>1</string>
<key>LSMinimumSystemVersion</key><string>14.0</string>
<key>NSHighResolutionCapable</key><true/>
<key>PipFilesEdition</key><string>$edition</string>
</dict></plist>
PLIST
codesign --force --sign - "$app"
codesign --verify --deep --strict "$app"
echo "$PWD/$app"
