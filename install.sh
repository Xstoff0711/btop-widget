#!/usr/bin/env bash
set -e

WIDGET_ID="com.xstoff.btopwidget"
INSTALL_DIR="$HOME/.local/share/plasma/plasmoids/$WIDGET_ID"

echo "Installing $WIDGET_ID to $INSTALL_DIR ..."

mkdir -p "$INSTALL_DIR"
cp -r metadata.json contents "$INSTALL_DIR/"

echo "Installing package ..."
kpackagetool6 --type Plasma/Applet --install . 2>/dev/null \
    || kpackagetool6 --type Plasma/Applet --upgrade .

echo "Done. Add the widget via right-click desktop → 'Add Widgets'."
