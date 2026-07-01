#!/usr/bin/env bash
set -e

WIDGET_ID="com.xstoff.btopwidget"
INSTALL_DIR="$HOME/.local/share/plasma/plasmoids/$WIDGET_ID"

echo "Installing $WIDGET_ID to $INSTALL_DIR ..."

# Nur die nötigen Dateien in ein temp-Verzeichnis kopieren,
# damit kpackagetool6 keinen Projektballast mitnimmt.
TMPDIR=$(mktemp -d)
trap 'rm -rf "$TMPDIR"' EXIT

cp -r metadata.json contents "$TMPDIR/"

echo "Installing package ..."
kpackagetool6 --type Plasma/Applet --install "$TMPDIR" 2>/dev/null \
    || kpackagetool6 --type Plasma/Applet --upgrade "$TMPDIR"

echo "Done. Add the widget via right-click desktop → 'Add Widgets'."
